<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>  
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
         .main { 
             min-height: 55vh; 

	    }  
	    .pro-qty .qtybtn {
	    border: none;
	    padding: 0;
	    width: 110px;
	    border-radius: 0;
	    font-size: 14px;
	    color: #666666;
	    cursor: pointer;
	    float: left;
	    width: 12px;
	    height: 50px;
	    line-height: 46px;
	    overflow: hidden;
    	display: inline-block;
}

    </style>
	<!-- Bootstrap CSS -->
	    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet"
	        integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
	    <script src="https://kit.fontawesome.com/4287c80df9.js" crossorigin="anonymous"></script>
	
	    <!--Google Font : Nunito-->
	    <link rel="preconnect" href="https://fonts.gstatic.com">
	    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@600&display=swap" rel="stylesheet">
	
	    <link rel="stylesheet" href="../front/shop/shopcss/bootstrap.min.css" type="text/css">
	    <link rel="stylesheet" href="../front/shop/shopcss/font-awesome.min.css" type="text/css">
	    <link rel="stylesheet" href="../front/shop/shopcss/elegant-icons.css" type="text/css">
	    <link rel="stylesheet" href="../front/shop/shopcss/jquery-ui.min.css" type="text/css">
	    <link rel="stylesheet" href="../front/shop/shopcss/magnific-popup.css" type="text/css">
	    <link rel="stylesheet" href="../front/shop/shopcss/owl.carousel.min.css" type="text/css">
	    <link rel="stylesheet" href="../front/shop/shopcss/slicknav.min.css" type="text/css">
	    <link rel="stylesheet" href="../front/shop/shopcss/style.css" type="text/css">
	    <!-- For style(All CSS content) -->
	    <link rel="stylesheet" type="text/css" href="../styles/home.css" />
	    <link rel="stylesheet" type="text/css" href="../styles/footer.css" />
	    <link rel="stylesheet" type="text/css" href="../styles/navbar.css" />
	    <link rel="icon" href="images/favicon.ico">
	
	    <!-- JS Bundle for BS  -->
	    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
	        integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous">
	        </script>
    <title>範本</title>
</head>

<body>

    <div class="container-fluid" style="margin-top: 75px;">
    </div>
    <!-- <section> -->
    <div class="main">    
       <!-- Shop Cart Section Begin -->
    <section class="shop-cart spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="shop__cart__table">
                        <table>
                            <thead>
                                <tr>
                                    <th>產品名稱</th>
                                    <th>價格</th>
                                    <th>&nbsp;&nbsp;&nbsp;數量</th>
                                    <th>&nbsp;總計</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${productList}" var="cart" varStatus="s">
                                <tr data-no="${s.index}" data-product-id="${cart.productId}">
                                    <td class="cart__product__item" >
                                        <img src="../${cart.productImg}" alt="" style="max-width: 150px; max-height: 150px;">
                                        <div class="cart__product__item__title">
                                            <h6>${cart.productName}-${cart.size}</h6>
					                    </div>
                                    </td>
                                    <td class="cart__price">NT$${cart.productPrice}</td>
                                    <td class="cart__quantity">
                                        <div class="pro-qty">
                                        <span class="dec qtybtn">-</span>
                                            <input type="text" value="${cart.quantity}" data-price="${cart.productPrice}" class="quantity-input">
                                        <span class="inc qtybtn">+</span>
                                        </div>
                                    </td>
                                    <td class="cart__total">NT$${cart.productPrice*cart.quantity}</td>
                                    <td class="cart__close"><span class="icon_close" onclick="removeCartItem(${s.index})"></span></td>
                                </tr>
                                <c:set var="count" value="${s.count}" />
							</c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-6">
                <div class="discount__content">
                        <h6>備註</h6>
                        <form action="#">
                            <input id="note" type="text" placeholder="備註">
                        </form>
                    </div>
                </div>
                <div class="col-lg-4 offset-lg-2">
                    <div class="cart__total__procced">
                        <h5>總價格</h5>
                        <ul>
                            <li>Total <span id="totalPrice"></span></li>
                        </ul>
                        <a href="#" class="primary-btn" onclick="submitOrder();">進行結帳</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Shop Cart Section End -->
    
    
    
    
    
    
    
    
    
    </div>

    



    
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"
	        integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous">
	        </script>
    <script>
			fetch('../html/basic.html')
			    .then(response => response.text())
			    .then(html => {
			        document.body.insertAdjacentHTML('beforeend', html);
			    });

	        // 監聽數量輸入框的變化事件
	        var quantityInputs = document.querySelectorAll('.cart__quantity input');

	        quantityInputs.forEach(function (input) {
	            input.addEventListener('input', function () {
	                var quantity = parseInt(this.value);
	                var price = parseFloat(this.getAttribute('data-price'));
	                var totalPrice = quantity * price;
	                var totalCell = this.parentNode.parentNode.nextElementSibling; // Get the total cell

	                // Update the total price cell
	                totalCell.textContent = 'NT$' + totalPrice;

	                updateTotalPrice(); // 更新总价
	            });
	        });

	     // 监听减少数量按钮的点击事件
	        var decreaseButtons = document.querySelectorAll('.dec');
	        decreaseButtons.forEach(function (button) {
	            button.addEventListener('click', function () {
	                var input = this.nextElementSibling;
	                var quantity = parseInt(input.value);
	                if (quantity > 1) { // 确保数量不会小于1
	                    input.value = quantity - 1;
	                    updateProductTotal(input); // 更新对应商品的总计
	                    updateTotalPrice(); // 更新总价
	                }
	            });
	        });

	        // 监听增加数量按钮的点击事件
	        var increaseButtons = document.querySelectorAll('.inc');
	        increaseButtons.forEach(function (button) {
	            button.addEventListener('click', function () {
	                var input = this.previousElementSibling;
	                input.value = parseInt(input.value) + 1;
	                updateProductTotal(input); // 更新对应商品的总计
	                updateTotalPrice(); // 更新总价
	            });
	        });

	        // 更新單個商品的總計
	        function updateProductTotal(input) {
	            var quantity = parseInt(input.value);
	            var price = parseFloat(input.getAttribute('data-price'));
	            var totalCell = input.parentNode.parentNode.nextElementSibling; // Get the total cell
	            var totalPrice = quantity * price;
	            totalCell.textContent = 'NT$' + totalPrice;
	        }

	        //更新總價格
	        function updateTotalPrice() {
	            var totalPrice = 0;

	            // 遍历每个商品的数量和单价，并计算总价
	            quantityInputs.forEach(function (input) {
	                var quantity = parseInt(input.value);
	                var price = parseFloat(input.getAttribute('data-price'));
	                totalPrice += (quantity * price);
	            });

	            // 更新页面上显示总价的元素的文本内容
	            document.getElementById('totalPrice').textContent = 'NT$' +  totalPrice;
	        }
	        function removeCartItem(index){
	        	$.ajax({
                    type: 'POST',
                    url: 'removeCartItem', // 刪除的Servlet路徑
                    data: { index: index }, //回傳productId 跟serv講說要刪哪行
                    success: function (response) {
                    	alert('刪除成功');
                        //$('tr[data-no="' + index + '"]').remove(); //在網頁上刪除那行
                    	//updateTotalPrice();
                        //刷新頁面
                        location.reload();
                    },
                    error: function () {
                        alert('刪除失敗');
                    }
                });
           }
//整個畫面跑好 更新總價格
	        window.onload = function() {
	            updateTotalPrice(); // 页面加载完成后更新总价
	            
	            console.log("你到底有沒有近來");
	            $('#memberDropdown').attr("style", "display: none");
	            $('#loginButton').attr("style", "display: block");


	            $.ajax({
	                url: "../checkUserLogin",
	                type: 'get',
	                success: function () {
	        			console.log("成功");
	                    $('#memberDropdown').show();
	                    $('#loginButton').hide();
	                },
	                error: function () {
	        			console.log("失敗");
	                    $('#memberDropdown').hide();
	                    $('#loginButton').show();
	                }
	            });
	        };
//送出訂單
	        function submitOrder() {
	            // 收集需要发送的数据
	            var Quanproduct = [];
	            var productList = [];
	            var rows = document.querySelectorAll('.shop__cart__table tbody tr');
	            var userId = "${users.userId}";
	            var note = document.getElementById('note').value;
	            
	            rows.forEach(function(row) {
	                var productId = row.getAttribute('data-product-id');
	                var productName = row.querySelector('.cart__product__item__title h6').textContent;
	                var parts = productName.split('-');
	                var size = parts[1]; // 获取尺寸部分
	                var productQuantity = parseInt(row.querySelector('.quantity-input').value);
                
                
	                var productList = {
	                    productId: productId,
	                    size: size,
	                    quantity: productQuantity,
	                };
	                Quanproduct.push(productList);
	            });
	            
	            $.ajax({
	                type: 'POST',
	                url: 'updateQuan',
	                data: JSON.stringify(Quanproduct),
	                contentType: 'application/json',
	                success: function(response) {
	                	//alert('庫存扣除成功');
	     	            rows.forEach(function(row) {
	 	                var productId = row.getAttribute('data-product-id');
	 	                var productName = row.querySelector('.cart__product__item__title h6').textContent;
	 	                var productPrice = parseFloat(row.querySelector('.cart__price').textContent.replace('NT$', ''));
	 	                var productQuantity = parseInt(row.querySelector('.quantity-input').value);
	 	                var totalPrice = parseFloat(row.querySelector('.cart__total').textContent.replace('NT$', ''));
		                
		                
	 	                var product = {
	 	                    productNum: productId,
	 	                    productName: productName,
	 	                    productPrice: productPrice,
	 	                    productQuantity: productQuantity,
	 	                   	orderTotalPrice: totalPrice
	 	                };
	 	                productList.push(product);
	 	            });
		            
// 		            //計算總價
// 	 	            var orderTotalPrice = 0;
// 	 	            productList.forEach(function(product) {
// 	 	                orderTotalPrice += product.totalPrice;
// 	 	            });
	 	            
	 	           // 组装订单数据对象
	 	           var orderData = {
	 	               userContactNew: {
	 	                   contactId: userId
	 	               },
	 	               orderNote: note,
	 	               orderDetails: productList
	 	           };
		            	
	 	            	console.log(JSON.stringify(orderData));
	 	            	//console.log("orderTotalPrice: " +orderTotalPrice);
	 	            	console.log("usersID: " +userId);
	 	            	console.log("note: " +note);
		            	
	 	               // 发送 AJAX 请求
	 	               $.ajax({
	 	                   type: 'POST',
	 	                   url: '../orders', // 替换为你的服务器端处理订单的 URL
	 	                   data: JSON.stringify(orderData),
	 	                   contentType: 'application/json', // 指定数据类型为 JSON
	 	                   success: function(response) {
	 	                	  alert('訂單提交成功');
	 	                	  window.location.href = 'http://localhost:8080/front/order/OrderForClient.html';
	 	                   },
	 	                   error: function() {
	 	                       alert('訂單提交失敗');
	 	                   }
	 	               });
        //以下為 上面success的 不能刪
	                },
	                error: function() {
	                    alert('扣除庫存錯誤');
	                }
	            });
	        }
    
    </script>

        <script src="../front/shop/shopjs/jquery-3.3.1.min.js"></script>
        <script src="../front/shop/shopjs/bootstrap.min.js"></script>
        <script src="../front/shop/shopjs/jquery.magnific-popup.min.js"></script>
        <script src="../front/shop/shopjs/jquery-ui.min.js"></script>
        <script src="../front/shop/shopjs/mixitup.min.js"></script>
        <script src="../front/shop/shopjs/jquery.countdown.min.js"></script>
        <script src="../front/shop/shopjs/jquery.slicknav.js"></script>
        <script src="../front/shop/shopjs/owl.carousel.min.js"></script>
        <script src="../front/shop/shopjs/jquery.nicescroll.min.js"></script>
        <script src="../front/shop/shopjs/main.js"></script>
<!--         <script src="../front/LoginUser.js"></script> -->
        
</body>


</html>