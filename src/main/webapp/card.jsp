<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Card</title>


<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.css">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">

										<!-- card css links -->

<!--font-awsome-->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!--footer stylesheet-->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

<!--header and footer stylesheet-->
<link rel="stylesheet" href="css/review.css">
<link rel="stylesheet" href="css/menu.css">
<link rel="stylesheet" href="css/card.css">
<link href="css/index.css" rel="stylesheet">

</head>
<body>
<header class="header">

    <a class="logo"> <i class="fas fa-utensils"></i> Foodie </a>

    <form action="" class="search-form">
        <input type="search" name="" placeholder="search here..." id="searchBox">
        <label for="searchBox" class="fas fa-search"></label>
    </form>

    <div class="icons">
        <div class="fas fa-search" id="search-btn"></div>
        <!--  <a href="login.jsp"><i class="fas fa-user" id="login-btn"></i></a>-->
        <div class="fas fa-bars" id="menu-btn"></div>
    </div>

    <nav class="navbar">
    	<a href="review.jsp">Review</a>
        <a href="login.jsp">Logout</a>    
    </nav>

</header><br><br><br><br>


<section>
	<div class="container" style="font-size: 15px;border:2px solid black;margin-left:220px;">
		<div class="left" style="font-size: 15px;">
			<p>Payment methods</p>
			<hr style="border:1px solid #ccc; margin: 0 15px;">
			<div class="methods">
				<div onclick="doFun()" id="tColorA" style="color: greenyellow;"><i class="fa-solid fa-credit-card" style="color: greenyellow;"></i> Payment by card</div>

				<div onclick="doFunB()" id="tColorC"><i class="fa-solid fa-wallet"></i>Delete card details</div>
			</div>
			<hr style="border:1px solid #ccc; margin: 0 15px;">
		</div>
		<div class="center">
			<a href="https://www.shift4shop.com/credit-card-logos.html"><img alt="Credit Card Logos" title="Credit Card Logos" src="https://www.shift4shop.com/images/credit-card-logos/cc-lg-4.png" width="250" height="auto"/></a>
			<hr style="border:1px solid #ccc; margin: 0 15px;">

			<div class="card-details">
				<form action="./addPaymentServlet" method="POST"> 
					<p>Card number</p>
					<div class="c-number" id="c-number">
						<input id="number" class="cc-number" placeholder="Card number" maxlength="19" name="cardNo" required>
						<i class="fa-solid fa-credit-card" style="margin: 0;"></i>
					</div>

					<div class="c-details">
						<div>
							<p>expiration date</p>
							<input id="e-date" class="cc-exp" placeholder="MM/YY" required maxlength="5" name="expDate" required>
						</div>
						<div>
							<p>CVV</p>
							<div class="cvv-box" id="cvv-box">
								<input id="cvv" class="cc-cvv" placeholder="CVV" required maxlength="3" name ="cvv" required>
								<i class="fa-solid fa-circle-question" title="3 digits on the back of the card" style="cursor: pointer;"></i>
							</div>
						</div>
					</div>
					<div class="email">
						<p>Email</p>
						<input type="email" placeholder="example@email.com" id="email" name="email" required>
					</div>
					<button>PAY NOW</button>
				</form>
			</div>
		</div>

		<div class="right">
			<p>Order information</p>
			<hr style="border:1px solid #ccc; margin: 0 15px;">
			<div class="details">
				<div style="font-weight: bold; padding: 3px 0;">Order description</div>
				<div style="padding: 3px 0;">Test payment</div>
			</div>
			<hr style="border:1px solid #ccc; margin: 0 15px;">
			<a href="https://www.shift4shop.com/credit-card-logos.html"><img alt="Credit Card Logos" title="Credit Card Logos" src="https://www.shift4shop.com/images/credit-card-logos/cc-lg-4.png" width="100%" height="auto" /></a>
		</div>
		
	</div>
</section>


<script src="js/card.js"></script>	
<script src="js/script.js"></script>
</body>
</html>