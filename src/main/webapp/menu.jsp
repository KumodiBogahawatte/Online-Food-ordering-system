<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.css">
<link rel="stylesheet" href="css/menu.css">
<meta charset="ISO-8859-1">
<title>shopping cart menu</title>

<link href="css/index.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.css">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
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
        <a href="login.jsp">Logout</a>   
        <a href="review.jsp">Review</a>      
    </nav>

</header><br><br><br><br>
    <!--dishes section start-->
<div class="menus">
        <div class="menus-inner">
            <h1 style="font-size:35px;">Our menu</h1><br>
			<p style="font-size:20px;">Order yours</p>
            <div class="menus-border"></div>
    
            <div class="menus-row">
                <div class="menus-col">
                    <div class="menus-testimonial">
                        <img src="img/burger-1.jpeg" alt="">
                        <div class="menus-name">FoodName</div>
                        <div class="menus-stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                        </div>
                        <p style="font-size:15px;">Lorem, ipsum dolor sit amet consectetur adipisicing elit. Saepe consequuntur, magni quisquam est hic dolorem.</p>
                        <br><br>
                        <span class="menus-price">Rs.950.00</span>
                        <br><br>
                        <button type="submit" class="menus-btn" name="buy-now"><a href="card.jsp">Buy Now</a></button>
                        
                    </div>
                </div>
    
                <div class="menus-col">
                    <div class="menus-testimonial">
                        <img src="img/burger-2.jpeg" style="height:185px;">
                        <div class="menus-name">FoodName</div>
                        <div class="menus-stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                        </div>
                        <p style="font-size:15px;">Lorem, ipsum dolor sit amet consectetur adipisicing elit. Saepe consequuntur, magni quisquam est hic dolorem.</p>
                        <br><br>
                        <span class="menus-price">Rs.950.00</span>
                        <br><br>
                        <button type="submit" class="menus-btn" name="buy-now"><a href="card.jsp">Buy Now</a></button>
                        
                    </div>
                </div>
    
                <div class="menus-col">
                    <div class="menus-testimonial">
                        <img src="img/burger-3.jpeg" style="height:185px;" alt="">
                        <div class="menus-name">FoodName</div>
                        <div class="menus-stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                        </div>
                        <p style="font-size:15px;">Lorem, ipsum dolor sit amet consectetur adipisicing elit. Saepe consequuntur, magni quisquam est hic dolorem.</p>
                        <br><br>
                        <span class="menus-price">Rs.950.00</span>
                        <br><br>
                        <button type="submit" class="menus-btn" name="buy-now"><a href="card.jsp">Buy Now</a></button>
                        
                    </div>
                </div>
            </div>
        </div>

        <div class="menus-inner">
            <div class="menus-row">
                <div class="menus-col">
                    <div class="menus-testimonial">
                        <img src="img/lasagna.jpeg" alt="">
                        <div class="menus-name">FoodName</div>
                        <div class="menus-stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                        </div>
                        <p style="font-size:15px;">Lorem, ipsum dolor sit amet consectetur adipisicing elit. Saepe consequuntur, magni quisquam est hic dolorem.</p>
                        <br><br>
                        <span class="menus-price">Rs.950.00</span>
                        <br><br>
                        <button type="submit" class="menus-btn" name="buy-now"><a href="card.jsp">Buy Now</a></button>
                        
                    </div>
                </div>
    
                <div class="menus-col">
                    <div class="menus-testimonial">
                        <img src="img/puri.jpeg" alt="">
                        <div class="menus-name">FoodName</div>
                        <div class="menus-stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                        </div>
                        <p style="font-size:15px;">Lorem, ipsum dolor sit amet consectetur adipisicing elit. Saepe consequuntur, magni quisquam est hic dolorem.</p>
                        <br><br>
                        <span class="menus-price">Rs.950.00</span>
                        <br><br>
                        <button type="submit" class="menus-btn" name="buy-now"><a href="card.jsp">Buy Now</a></button>
                        
                    </div>
                </div>

                <div class="menus-col">
                    <div class="menus-testimonial">
                        <img src="img/buriyani.jpeg" alt="">
                        <div class="menus-name">FoodName</div>
                        <div class="menus-stars">
                            <i class="fas fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                        </div>
                        <p style="font-size:15px;">Lorem, ipsum dolor sit amet consectetur adipisicing elit. Saepe consequuntur, magni quisquam est hic dolorem.</p>
                        <br><br>
                        <span class="menus-price">Rs.950.00</span>
                        <br><br>
                        <button type="submit" class="menus-btn" name="buy-now"><a href="card.jsp">Buy Now</a></button>
                    </div>
                </div>

                </div>
            </div>
        </div>
<!-- footer section starts  -->

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
            <a href="index.jsp"> <i class="fas fa-chevron-right"></i> Home </a>
            <a href="review.jsp"> <i class="fas fa-chevron-right"></i>Review</a>
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