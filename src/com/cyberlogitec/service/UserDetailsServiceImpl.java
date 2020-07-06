package com.cyberlogitec.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.cyberlogitec.dao.UserDao;
import com.cyberlogitec.model.User;
import com.cyberlogitec.utils.EncrytedPasswordUtils;


@Service("userDetailsService")
public class UserDetailsServiceImpl implements UserDetailsService{
	
	@Autowired
	private UserDao userDAO;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        User user = userDAO.getUserByUserName(username);
        if (user == null) {
            throw new UsernameNotFoundException("User not found");
        }
        
        ArrayList<GrantedAuthority> grantList = new ArrayList<GrantedAuthority>();
        grantList.add(new SimpleGrantedAuthority("ROLE_"+user.getRole()));

        return new org.springframework.security.core.userdetails.User(user.getUserName(),EncrytedPasswordUtils.encrytePassword(user.getPassword()),grantList);
    }
}
