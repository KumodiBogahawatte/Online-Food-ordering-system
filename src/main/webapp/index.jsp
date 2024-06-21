<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>

<link href="css/index.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.css">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">

</head>
<body>
	
	
	<!--=================================nav bar=======================================================-->

<header class="header">

    <a class="logo"> <i class="fas fa-utensils"></i> Foodie </a>

    <form action="" class="search-form">
        <input type="search" name="" placeholder="search here..." id="searchBox">
        <label for="searchBox" class="fas fa-search"></label>
    </form>

    <div class="icons">
        <div class="fas fa-search" id="search-btn"></div>
        <a href="registration.jsp"><i class="fas fa-user" id="login-btn"></i></a>
        <div class="fas fa-bars" id="menu-btn"></div>
    </div>

    <nav class="navbar">
        <a href="#home">home</a>
        <a href="input-box">Set Your Time</a>
        <a href="#Ourspecials">Our Specials</a>
        <a href="#Packages">Our Packages</a>
        <a href="#Idea">Your Idea</a>
        <a href="#blogs">blogs</a>
        <a href="about.jsp">About Us</a>        
    </nav>

     
</header>	
	
	
	<!--=================================Home=======================================================-->
	
<section class="home" id="home">
	<div class="image">
	
		<!-- back image-->
			<img src="./img/R.png" alt="">
	</div>
	<div class="content">
        <h3>Best EVER, you ask? Totally.Now we are in HERE!</h3>
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Doloremque aut quae a, animi unde neque.</p><br><br>
        <a href="registration.jsp" class="btn">Explore now</a>
	</div>
</section>
	
	<!--=================================order=======================================================-->
		
<section class="form-container" >
    <form action="" id="input-box">
        <div class="input-box">
            <span>Where</span>
            <input type="text" placeholder="Search Places">
        </div>

        <div class="input-box">
            <span>When</span>
            <input type="date">
        </div>

        <div class="input-box">
            <span>Time</span>
            <input type="time">
        </div>
        <input type="submit" value="Order Now" class="btn">
    </form>
</section>

<!-- ======================================Our Specials================================== -->

<section class="packages" id="Ourspecials">
   <h1 class="heading">Our <span>Specials</span></h1>

    <div class="row">
        <div class="package-col">
            <img src="./img/rice.jpg" alt="" >
            <div class="layer">
                <h3>Fride Rice</h3>
            </div>
        </div>
        <div class="package-col">
            <img src="./img/noodels.jpeg" alt="">
            <div class="layer">
                <h3>Noodles</h3>
            </div>
        </div>
        <div class="package-col">
            <img src="./img/pasta.jpg" alt="">
            <div class="layer">
                <h3>Pasta</h3>
            </div>
        </div>
        <div class="package-col">
            <img src="./img/kottu.jpg" alt="">
            <div class="layer">
                <h3>Kottu</h3>
            </div>
        </div>
        <div class="package-col">
            <img src="./img/burger.jpg" alt="">
            <div class="layer">
                <h3>Bun</h3>
            </div>
        </div>
        <div class="package-col">
            <img src="./img/desserts_and_drinks.jpg" alt="">
            <div class="layer">
                <h3>Desserts & Drinks</h3>
            </div>
        </div>
    </div>
    <hr>
</section>

<!-- ======================================Our Packages================================== -->

<section class="pri" id="Packages">
    <h1 class="heading">Our <span>Packages</span></h1>

    <div class="box-container">


        <div class="box">
            <h3>Basic Plan</h3>
            <div class="price">
                <span>Rs</span>
                <span class="amount">600</span>
                <span>/mo</span>
            </div>

            <ul>
                <li>10 Days</li>
                <li>Food and Drinks</li>
                <li>Sefty Guide</li>
                <li>Insurence</li>
                <li>Free Delivery</li>
            </ul>
            <a href="registration.jsp" class="btn">Choose Plan</a>

        </div>

        <div class="box">
            <h3>Basic Plan</h3>
            <div class="price">
                <span>Rs</span>
                <span class="amount">1000</span>
                <span>/mo</span>
            </div>

            <ul>
                <li>15 Days</li>
                <li>Food and Drinks</li>
                <li>Sefty Guide</li>
                <li>Insurence</li>
                <li>Free Delivery</li>
            </ul>
            <a href="registration.jsp" class="btn">Choose Plan</a>

        </div>

        <div class="box">
            <h3>Basic Plan</h3>
            <div class="price">
                <span>Rs</span>
                <span class="amount">2000</span>
                <span>/mo</span>
            </div>

            <ul>
                <li>1 Month</li>
                <li>Food and Drinks</li>
                <li>Sefty Guide</li>
                <li>Insurence</li>
                <li>Free Delivery</li>
            </ul>
            <a href="registration.jsp" class="btn">Choose Plan</a>

        </div>


    </div>
</section>

<!-- ===========================================Ideas Section===================================== -->

<section class="contact" id="Idea">
    <h1 class="heading">Your <span>Idea</span></h1>


    <form action="ideaServlet" method="POST">
        <div class="input-box">
            <input type="text" placeholder="Name" name="name">
            <input type="email" placeholder="Email"  name="email">
            <input type="text" placeholder="Food Type" name="foodType">
            <input type="text" placeholder="message" name="message">
        </div>
        
        
        <input type="submit" value="Send Message" class="btn">
    </form>
    
</section>

<!-- =============================================Blog===================================== -->

<section class="blogs" id="blogs">
    <h1 class="heading">Our <span>Blogs</span></h1>

    <div class="box-container">
        <div class="box">
            <div class="image">
                <img src="./img/slfa.jpg" alt="">
            </div>
                <div class="content">What is the Sri Lankan in famous Food?
                <a href="registration.jsp" class="btn">Read More</a>
                <div class="icons">
                <a href=""><i class="fas fa-calender"></i>1st Jan 2024</a>
                <a href=""><i class="fas fa-user"></i>By Admin</a>
                </div>
            </div>
        </div>

        <div class="box">
            <div class="image">
                <img src="./img/burger2.jpg" alt="">
            </div>
                <div class="content">We bring you the best burgers in Sri Lanka. 
                <a href="registration.jsp" class="btn">Read More</a>
                <div class="icons">
                <a href=""><i class="fas fa-calender"></i>1st Jan 2024</a>
                <a href=""><i class="fas fa-user"></i>By Admin</a>
                </div>
            </div>
        </div>

        <div class="box">
            <div class="image">
                <img src="./img/food2.jpg" alt="">
            </div>
                <div class="content">Are they the best as the SPICES we use?
                <a href="registration.jsp" class="btn">Read More</a>
                <div class="icons">
                <a href=""><i class="fas fa-calender"></i>1st Jan 2024</a>
                <a href=""><i class="fas fa-user"></i>By Admin</a>
                </div>
            </div>
        </div>
    
    
    </div>
</section><br><br><br>

<!-- footer section starts  -->

<section class="footer" id="footer">

    <div class="box-container">

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
            <a href="review.jsp"> <i class="fas fa-chevron-right"></i> Review </a>
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