package com.cyberlogitec.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import com.cyberlogitec.service.UserDetailsServiceImpl;

@Configuration
@EnableWebSecurity
@ComponentScan(basePackages = { "com.cyberlogitec" })
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {
	@Autowired
	private UserDetailsServiceImpl userDetailsService;

	@Bean
	public PasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}

	@Autowired
	protected void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(userDetailsService).passwordEncoder(passwordEncoder());
	}

	
	  @Override protected void configure(HttpSecurity http) throws Exception {
	  http.authorizeRequests() .antMatchers("/css/**", "/img/**", "/fonts/**","/js/**", "/swf/**", "/common/**", "/registerUser") 
	  .permitAll()
	  .antMatchers("/", "/smartphone", "/smartphonecatalog", "/smartphonedetail","/userinformation")
	  .hasAnyRole("USER", "ADMIN") 
	  .anyRequest()
	  .authenticated() 
	  .and() 
	  .formLogin() 
	  .loginPage("/login")
	  .loginProcessingUrl("/doLogin") 
	  .usernameParameter("username")
	  .passwordParameter("password") 
	  .defaultSuccessUrl("/smartphone")
	  .permitAll() 
	  .and()
	  .csrf() 
	  .disable(); 
	  }
	 

}