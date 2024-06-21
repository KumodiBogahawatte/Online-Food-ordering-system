<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="css/index.css" rel="stylesheet">


<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
<title>Review</title>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.css">

<!--font-awsome-->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!--footer stylesheet-->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

<!--header and footer stylesheet-->
<link rel="stylesheet" href="css/review.css">
<link rel="stylesheet" href="css/menu.css">
</head>
<body>
 <script>
function insertFunction() {
  alert("You have successfully inserted the details!");
}
</script>
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
    	<a href="menu.jsp">menu</a>
        <a href="login.jsp">Logout</a>   
             
    </nav>

</header><br><br><br><br>

<div class="testimonials">
	<div class="inner">
		<h1 style="font-size:35px;">Customers' Reviews</h1><br>
		<p style="font-size:20px;">Our Customers Says</p>
		
		<div class="border"></div>
			<div class="row">
				<div class="col">
					<div class="testimonial">
						<img src="img/p-1.jpeg" alt="">
						<div class="name">Full name</div>
							<div class="stars">
		                        <i class="fas fa-star"></i>
		                        <i class="fas fa-star"></i>
		                        <i class="fas fa-star"></i>
		                        <i class="fa-regular fa-star"></i>
	                    	</div>
	                    	<p style="font-size:15px;">Lorem, ipsum dolor sit amet consectetur adipisicing elit. Saepe consequuntur, magni quisquam est hic dolorem.</p>
                	</div>
            	</div>
            	
            	<div class="col">
					<div class="testimonial">
						<img src="img/p-2.jpeg" alt="">
						<div class="name">Full name</div>
							<div class="stars">
		                        <i class="fas fa-star"></i>
		                        <i class="fas fa-star"></i>
		                        <i class="fa-regular fa-star"></i>
		                        <i class="fa-regular fa-star"></i>
	                    	</div>
	                    	<p style="font-size:15px;">Lorem, ipsum dolor sit amet consectetur adipisicing elit. Saepe consequuntur, magni quisquam est hic dolorem.</p>
                	</div>
            	</div>
            	
            	<div class="col">
					<div class="testimonial">
						<img src="img/p-3.jpeg" alt="">
						<div class="name">Full name</div>
							<div class="stars">
		                        <i class="fas fa-star"></i>
		                        <i class="fas fa-star"></i>
		                        <i class="fa-regular fa-star"></i>
		                        <i class="fa-regular fa-star"></i>
	                    	</div>
	                    	<p style="font-size:15px;">Lorem, ipsum dolor sit amet consectetur adipisicing elit. Saepe consequuntur, magni quisquam est hic dolorem.</p>
                	</div>
            	</div>
			</div>
	</div>

	<div class="inner">
			<div class="row">
				<div class="col">
					<div class="testimonial">
						<img src="img/p-4.jpeg" alt="">
						<div class="name">Full name</div>
							<div class="stars">
		                        <i class="fas fa-star"></i>
		                        <i class="fas fa-star"></i>
		                        <i class="fas fa-star"></i>
		                        <i class="fa-regular fa-star"></i>
	                    	</div>
	                    	<p style="font-size:15px;">Lorem, ipsum dolor sit amet consectetur adipisicing elit. Saepe consequuntur, magni quisquam est hic dolorem.</p>
                	</div>
            	</div>
            	
            	<div class="col">
					<div class="testimonial">
						<img src="img/p-5.jpg" alt="">
						<div class="name">Full name</div>
							<div class="stars">
		                        <i class="fas fa-star"></i>
		                        <i class="fas fa-star"></i>
		                        <i class="fa-regular fa-star"></i>
		                        <i class="fa-regular fa-star"></i>
	                    	</div>
	                    	<p style="font-size:15px;">Lorem, ipsum dolor sit amet consectetur adipisicing elit. Saepe consequuntur, magni quisquam est hic dolorem.</p>
                	</div>
            	</div>
            	
			</div>
	</div>	
</div>
<!--contact us form for create crud-->
<div class="img">
    
<form action="addReviewServlet" method="POST">
    <h1>Share Your Experience With Us!</h1><br><br>
    <div class="form-row">
        <div class="input-grp">
            <input type="text" name="name" required>
            <label for="name" style="font-size:15px;"><i class="fas fa-user" style="font-size: 15px;color: black;"></i>Your name</label>
        </div>
    
        <div class="input-grp">
            <input type="text" name="mobile" required>
            <label for="mobile" style="font-size:15px;"><i class="fas fa-phone-alt" style="font-size: 15px;color: black;"></i>Your mobile</label>
        </div>
    </div>
    <div class="input-grp">
        <input type="text" name="email" required>
        <label for="email" style="font-size:15px;"><i class="fas fa-envelope" style="font-size: 15px;color: black;"></i>Your email</label>
    </div>

    <div class="input-grp">
        <textarea name="message" id="" cols="30" rows="10" required></textarea>
        <label for="message" style="font-size:15px;"><i class="fas fa-message" style="font-size: 15px;color: black;"></i>Your message</label>
    </div>
    <button type="submit">SEND<i class="fa-regular fa-paper-plane" style="font-size: 15px;color: black;" onclick="insertFunction()"></i></button>
</form>
</div>
 
 <section class="footer" id="footer" style="background:whitesmoke;" >

    <div class="box-container" style="background:whitesmoke;" >

        <div class="box" data-aos="fade-up">
            <h3>our branches</h3>
            <a href="#"> <i class="fas fa-map-marker-alt"></i> Colombo </a>
            <a href="#"> <i class="fas fa-map-marker-alt"></i> Negambo </a>
            <a href="#"> <i class="fas fa-map-marker-alt"></i> Kurunagala </a>
            <a href="#"> <i class="fas fa-map-marker-alt"></i> Kandy </a>
            <a href="#"> <i class="fas fa-map-marker-alt"></i> Kaduwela </a>
        </div>

        <div class="box" data-aos="fade-up">
            <h3>quick links</h3>
            <a href="#home"> <i class="fas fa-chevron-right"></i> home </a>
            <a href="#Ourspecials"> <i class="fas fa-chevron-right"></i> Our Specials </a>
            <a href="#Packages"> <i class="fas fa-chevron-right"></i> Our Packages </a>
            <a href="#Idea"> <i class="fas fa-chevron-right"></i> Your Idea </a>
            <a href="#blogs"> <i class="fas fa-chevron-right"></i> Our Blogs </a>
        </div>

        <div class="box" data-aos="fade-up">
            <h3>contact info</h3>
            <a href="#"> <i class="fas fa-phone"></i> +94 111 222 3333 </a>
            <a href="#"> <i class="fas fa-phone"></i> +94 222 333 4444 </a>
            <a href="#"> <i class="fas fa-envelop"></i> foodie@gmail.com</a>
            <a href="#"> <i class="fas fa-map-marker-alt"></i> 14,main street,Colmbo,Sri Lanka</a>
        </div>

        <div class="box" data-aos="fade-up">
            <h3>follow us</h3>
            <a href="#"> <i class="fab fa-facebook-f"></i> facebook </a>
            <a href="#"> <i class="fab fa-twitter"></i> twitter </a>
            <a href="#"> <i class="fab fa-instagram"></i> instagram </a>
            <a href="#"> <i class="fab fa-linkedin"></i> linkedin </a>
            <a href="#"> <i class="fab fa-pinterest"></i> pinterest </a>
        </div>

    </div>

    <div class="credit"> creadet by <span>Ftd</span> | all rights reserved </div>

</section>
	
<script src="js/script.js"></script>
</body>
</html>
