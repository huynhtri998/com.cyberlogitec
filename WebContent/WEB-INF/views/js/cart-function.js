function setCookie(name, value, days) {
		var expires = "";
		if (days) {
			var date = new Date();
			date.setTime(date.getTime() + (days * 24 * 60 * 60 * 1000));
			expires = "; expires=" + date.toUTCString();
		}
		document.cookie = name + "=" + (value || "") + expires + "; path=/";
	}

	function getCookie(name) {
		var nameEQ = name + "=";
		var ca = document.cookie.split(';');
		for (var i = 0; i < ca.length; i++) {
			var c = ca[i];
			while (c.charAt(0) == ' ') c = c.substring(1, c.length);
			if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length, c.length);
		}
		return null;
	}
		var add_cart = document.getElementsByClassName("btn_addToCart");
		for (var i = 0; i < add_cart.length; i++) {
			var add = add_cart[i];
			add.addEventListener(
							"click",
							function(event) {

								var button = event.target;
								var product = button.parentElement.parentElement;
								var img = product.parentElement
										.getElementsByClassName("img_product")[0].src
								var title = product
										.getElementsByClassName("name_product")[0].innerText
								var price = product
										.getElementsByClassName("price_product")[0].innerText
								var id = product
										.getElementsByClassName("id_product")[0].value
								addItemToCart(title, price, img, id)
								// Khi thêm sản phẩm vào giỏ hàng thì sẽ hiển thị modal
								//modal.style.display = "block";

								//updatecart()
							})
		}
		
		function showCart(){
		  var cartItems = document.getElementsByClassName('cart_items')[0]
		  var cart_title = cartItems.getElementsByClassName('cart_name_product')
		  var cart_id = cartItems.getElementsByClassName('id_product')	 
		  var getVal = JSON.parse(getCookie('shoppingCart'))
		  if (getVal != null) {
			  for (var i = 0; i < getVal.length; i++) {
				  var check = true
				  for (var j = 0; j < cart_id.length; j++) {
					  console.log(getVal[i].id + ' ' + cart_id[j].value)
					if (getVal[i].id == cart_id[j].value) {
						check = false
					}
				  }
				  console.log(check)
					if (check == true) {					
			  var cartRow = document.createElement('div')
			  cartRow.classList.add('cart_row')
				  var cartRowContents = '<div class="row"><div class="col-xs-2">' + 
					'<img class="img-responsive" src="' + getVal[i].img + '">' + 
				'</div>'+
				'<div class="col-xs-4">' + 
					'<h4 class="product-name">' + 
						'<strong class="cart_name_product">' + getVal[i].title + '</strong>' + 
					'</h4>' + 
				'</div>' + 
				'<div class="col-xs-6">' + 
					'<div class="col-xs-6 text-right">' + 
						'<h6>' + 
							'<strong>$ </strong><strong class="cart_price">' + getVal[i].price + '</strong>' + 
							'<span class="text-muted">x</span>' + 
						'</h6>' +
						'<input type="number" name="productPrice" hidden  value="' + getVal[i].price + '">'+ 
					'</div>' + 
					'<div class="col-xs-4">' + 
						'<input type="number" name="productQuantity" class="cart_input form-control input-sm" value="1">' + 
					'</div>' + 
					'<div class="col-xs-2">' + 
						'<button type="button" id="'+getVal[i].id+'" class="btn btnDelete btn-link btn-xs">' + 
							'<span class="glyphicon glyphicon-trash"> </span>' +
						'</button>'+
						'<input type="text" hidden="" name="productId" class="id_product" value="'+getVal[i].id+'" name="lname">'
						+ 
					'</div>' + 
				'</div>' + 
			'</div>' +
			'<hr>'
		  		
			  cartRow.innerHTML = cartRowContents
			 
			  cartItems.append(cartRow)
					}
				  }
			  var remove_cart = document.getElementsByClassName("btnDelete");
				for (var i = 0; i < remove_cart.length; i++) {
					var button = remove_cart[i]
					button.addEventListener(
									"click",
									function() {
										var button_remove = event.target
										var id_product = button_remove.parentElement.id
										var a
										console.log(id_product)
										for (var j = 0; j < getVal.length; j++) {
											if (id_product == getVal[j].id) {
												getVal.splice(j,1)
												a = getVal
												 setCookie('shoppingCart',JSON.stringify(a), 7);
											}
										}
										button_remove.parentElement.parentElement.parentElement.parentElement.parentElement
												.remove()
										
										updatecart();
									})
				}
				var quantity_input = document.getElementsByClassName("cart_input");
				for (var i = 0; i < quantity_input.length; i++) {
					var input = quantity_input[i];
					console.log(input)
					input.addEventListener("change", function(event) {
					var input = event.target
					if (isNaN(input.value) || input.value <= 0) {
				      input.value = 1;
				    }
					updatecart()
				})
			}
		  updatecart()
		}
		 
		}

		function addItemToCart(title, price, img, id) {
			var check = true;
			var cartItems = document.getElementsByClassName('cart_items')[0]
			  var cart_title = cartItems.getElementsByClassName('cart_name_product')
			for (var i = 0; i < cart_title.length; i++) {
			    if (cart_title[i].innerText == title) {
			    	check = false;
			      alert('Sản Phẩm Đã Có Trong Giỏ Hàng')
			      return
			    }
			  }
			if(check == true){
				if(getCookie('shoppingCart')){
					  var objInner = {id:id, title:title, price:price, img:img};
					  var getVal = JSON.parse(getCookie('shoppingCart'));
					  getVal.push(objInner);
					  setCookie('shoppingCart',JSON.stringify(getVal), 7);
					  
				  }
				  else{
					  var objInner = JSON.stringify([{id:id, title:title, price:price, img:img}]);
					  setCookie('shoppingCart',objInner, 7);
				  }
			}
		  
		}
		
		//Update cart
		function updatecart() {
			var cart_item = document.getElementsByClassName("cart_items")[0];
			var cart_rows = cart_item.getElementsByClassName("cart_row");
			var total = 0;
			for (var i = 0; i < cart_rows.length; i++) {
				var cart_row = cart_rows[i]
				var price_item = cart_row.getElementsByClassName("cart_price")[0]
				var quantity_item = cart_row
						.getElementsByClassName("cart_input")[0]
				var price = parseFloat(price_item.innerText)
				var quantity = quantity_item.value 
				total = total + (price * quantity)
			}
			document.getElementsByClassName("cart_total")[0].innerText = total
					+ '$'
			document.getElementsByClassName("cart_totalinput")[0].value = total
		}

		function sendRequest(){
			var getVal = $(".cart_row")
		    var idUser = $("#idUser").val();
		    var total = $(".cart_total")[0].innerText.split("$")[0];
		    var shoppingCart = 
		    	{
		    		total: total,
		    		idUser: idUser,
		    		cartItems:[] 
		    	};
		    for (var i = 0; i < getVal.length; i++) {
		    	var productPrice = getVal[i].getElementsByClassName("cart_price")[0].innerText;
		    	var productId = getVal[i].getElementsByClassName("id_product")[0].value;
		    	var productQuantity = getVal[i].getElementsByClassName("cart_input")[0].value;
		    	shoppingCart['cartItems'].push({productId:productId,productPrice:productPrice,productQuantity:productQuantity})
		    	
			}
			axios.post('/com.cyberlogitec/saveCart', 
						{
							product: JSON.stringify(shoppingCart)
						}
					
					)
				.then((response) => {
					document.cookie = 'shoppingCart' +'=; Path=/; Expires=Thu, 01 Jan 1970 00:00:01 GMT;';
					alert('Mua thanh cong')
					window.location.href = '/com.cyberlogitec/smartphone';
				}, (error) => {
				  console.log(error);
				});
		}
		
		