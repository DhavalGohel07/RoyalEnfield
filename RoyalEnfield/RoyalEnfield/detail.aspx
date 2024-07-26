<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="detail.aspx.cs" Inherits="RoyalEnfield.detail" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Bree+Serif&family=EB+Garamond:ital,wght@0,500;1,800&display=swap');


body {
    background: #FFF;
	background-attachment: fixed;	
	background-size: cover;
  
	}

#container{
	box-shadow: 0 15px 30px 1px grey;
	background: rgba(255, 255, 255, 0.90);
	text-align: center;
    margin-top:-10px;
	border-radius: 5px;
	overflow: hidden;
	margin-left:300px;
	height: 350px;
	width: 850px;
    border-radius:20px;
  
	
}



.product-details {
	position: relative;
	text-align: left;
	overflow: hidden;
	padding: 30px;
	height: 100%;
	float: left;
	width: 40%;

}

#container .product-details h1{
	font-family: 'Bebas Neue', cursive;
	display: inline-block;
	position: relative;
	font-size: 30px;
	color: #344055;
	margin: 0;
	
}

#container .product-details h1:before{
	position: absolute;
	content: '';
	right: 0%; 
	top: 0%;
	transform: translate(25px, -15px);
	font-family: 'Bree Serif', serif;
	display: inline-block;
	background: #ffe6e6;
	border-radius: 5px;
	font-size: 14px;
	padding: 5px;
	color: white;
	margin: 0;
	animation: chan-sh 6s ease infinite;

}



	


.hint-star {
	display: inline-block;
	margin-left: 0.5em;
	color: gold;
	width: 50%;
}


#container .product-details > p {
font-family: 'EB Garamond', serif;
	text-align: center;
	font-size: 18px;
	color: #7d7d7d;
	
}
.control{
	position:inherit;
	bottom: 20%;
	left: 22.8%;
	margin-top:auto;
}
.btn {

	transform: translateY(0px);
	transition: 0.3s linear;
	background:  #809fff;
	border-radius: 5px;
    position: relative;
    overflow: hidden;
	cursor: pointer;
	outline: none;
	border: none;
	color: #eee;
	padding: 0;
	margin: 0;
	
}

.btn:hover{transform: translateY(-6px);
	background: #1a66ff;}

.btn span {
	font-family: 'Farsan', cursive;
	transition: transform 0.3s;
	display: inline-block;
  padding: 10px 20px;
	font-size: 1.2em;
	margin:0;
	
}

.btn .buy {z-index: 3; font-weight: bolder;}


.product-image {
	transition: all 0.3s ease-out;
	display: inline-block;
	position: relative;
	overflow: hidden;
	height: 100%;
	float: right;
	width: 45%;
	display: inline-block;
}

#container img {width: 100%;height: 100%;}

.info {
    background: rgba(27, 26, 26, 0.9);
    font-family: 'Bree Serif', serif;
    transition: all 0.3s ease-out;
    transform: translateX(-100%);
    position: absolute;
    line-height: 1.8;
    text-align: left;
    font-size: 105%;
    cursor: no-drop;
    color: #FFF;
    height: 100%;
    width: 100%;
    left: 0;
    top: 0;
}

.info h2 {text-align: center}
.product-image:hover .info{transform: translateX(0);}

.info ul li{transition: 0.3s ease;}
.info ul li:hover{transform: translateX(50px) scale(1.3);}

.product-image:hover img {transition: all 0.3s ease-out;}
.product-image:hover img {transform: scale(1.2, 1.2);}
    </style>
    <meta charset="utf-8">
    <title>Royal Bikes</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@400;500;600;700&family=Rubik&display=swap" rel="stylesheet"> 

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.0/css/all.min.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
      
  
    
     <style>

      </style>
</head>
   
  
<body>
    <form runat="server">
    <!-- Topbar Start -->
    <div class="container-fluid bg-dark py-3 px-lg-5 d-none d-lg-block">
        <div class="row">
            <div class="col-md-6 text-center text-lg-left mb-2 mb-lg-0">
                <div class="d-inline-flex align-items-center">
                    <span class="text-body"><i class="fa fa-envelope"></i></span>
                     <a class="text-body px-3" href=""><asp:Label ID="user_name" runat="server" Text="User"></asp:Label></a>
                </div>
            </div>
            <div class="col-md-6 text-center text-lg-right">
                <div class="d-inline-flex align-items-center">
                   <a class="text-body px-3" href="https://www.facebook.com/dhaval.gohel.906638/">
                        <i class="fab fa-facebook-f"></i>
                    </a>
                    <a class="text-body px-3" href="https://twitter.com/DhavalGohel07">
                        <i class="fab fa-twitter"></i>
                    </a>
                    <a class="text-body px-3" href="https://www.linkedin.com/in/dhaval-gohel-045077217/">
                        <i class="fab fa-linkedin-in"></i>
                    </a>
                    <a class="text-body px-3" href="https://www.instagram.com/_dhaval.11/">
                        <i class="fab fa-instagram"></i>
                    </a>
                    <a class="text-body pl-3" href="https://youtu.be/Sg8hZ4Vj3Po">
                        <i class="fab fa-youtube"></i>
                    </a>
                </div>
            </div>
        </div>
    </div>
    <!-- Topbar End -->


    <!-- Navbar Start -->
    <div class="container-fluid position-relative nav-bar p-0">
        <div class="position-relative px-lg-5" style="z-index: 9;">
            <nav class="navbar navbar-expand-lg bg-secondary navbar-dark py-3 py-lg-0 pl-3 pl-lg-5">
                <a href="" class="navbar-brand">
                    <h1 class="text-uppercase text-primary mb-1">Royal Enfield</h1>
                </a>
                <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse justify-content-between px-3" id="navbarCollapse">
                    <div class="navbar-nav ml-auto py-0">
                        <a href="HomePage.aspx" class="nav-item nav-link">Home</a>
                        <a href="about.aspx" class="nav-item nav-link">About</a>
                        <a href="service.aspx" class="nav-item nav-link">Service</a>
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle active" data-toggle="dropdown">Bikes</a>
                            <div class="dropdown-menu rounded-0 m-0">
                                <a href="detail.aspx" class="dropdown-item active">Bikes Detail</a>
                                <a href="booking.aspx" class="dropdown-item">Bikes Booking</a>
                            </div>
                        </div>
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Pages</a>
                            <div class="dropdown-menu rounded-0 m-0">
                                <a href="team.aspx" class="dropdown-item">The Team</a>
                                <a href="testimonial.aspx" class="dropdown-item">Testimonial</a>
                            </div>
                        </div>
                        <a href="contact.aspx" class="nav-item nav-link">Contact</a>
                        <a href="Sign_Up.aspx" class="nav-item nav-link">Log Out</a>
                    </div>
                </div>
            </nav>
        </div>
    </div>
    <!-- Navbar End -->
      <div class="container-fluid py-5">
        <div class="container pt-5 pb-3">
            <h1 class="display-1 text-primary text-center"></h1>
            <h1 class="display-4 text-uppercase text-center mb-5">Bike Details</h1>
            </div>
          </div>

    <%--Card Start--%>

        <% for (int i = 0; i < bname.Length; i++) { %>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<div id="container">	
	
	<div class="product-details">
		
	<h1><%=bname[i]%></h1>
		<br /><br /><p class="information"><%=babout[i]%></p>
          <br />
<div class="btn btn-block btn-primary py-2">
  
    <a href='booking.aspx?id=<%=bid[i]%>' style="color:black;">Book Now</a>
    <%--<asp:Button class="btn btn-block btn-primary py-2" runat="server" Text="Book Now" OnClick="button_Click" />--%><br />
</div>
			
</div>
	 
<div class="product-image">
	
	<img src="<%=bimage[i]%>">
	
<div class="info">
	<h2 style="color:white">Specification</h2>
	<ul>
		<li><strong>Model : </strong><%=bmodel[i]%></li>
		<li><strong>EX-Showroom Price : </strong><%=bprice[i]%></li>
		<li><strong>Engine: </strong><%=bengine[i]%></li>
		<li><strong>Power: </strong><%=bpower[i]%></li>
        <li><strong>Milege : </strong><%=bmilege[i]%> </li>
		<li><strong>Torque : </strong><%=btorque[i]%></li>
		<li><strong>Tyre Type: </strong><%=btyre[i]%></li>
		
	</ul>
</div>
</div>
</div>
        <br /><br /></br/>

          <% }%>

    <%--Card End--%>

 <%--<% for (int i = 0; i < rname.Length; i++) { %>


   <br><br>
<div class='card1'>
  <div class='card_left1'>
    <img src="<%=rimage[i]%>">
  </div>
  <div class='card_right1'>
    <h1><%=rname[i]%></h1>
    <div class='card_right__details1'>
	<br>
    <ul><li>Price : <%=rprice[i]%> INR per person</li></ul>
     <br>
      <div class='card_right__review1'>
        <p>• <%=rdescription[i]%> <br> • <%=rfacilities[i]%><br>• <%=rplace[i]%><br>
		<br>
		• <%=rdays[i]%> Days at 5 Star Hotel •</p>
       <br>   </div>
      <div class='card_right__button1'>
        <a href='Book_Resorts.aspx?id=<%=rid[i] %>' >Book Now</a>
      </div>
    </div>
  </div>
</div>
<br>
        <% }%>--%>


    <!-- Footer Start -->
    <div class="container-fluid bg-secondary py-5 px-sm-3 px-md-5" style="margin-top: 90px;">
        <div class="row pt-5">
            <div class="col-lg-3 col-md-6 mb-5">
                <h4 class="text-uppercase text-light mb-4">Get In Touch</h4>
                <p class="mb-2"><i class="fa fa-map-marker-alt text-white mr-3"></i> A33, Orchid woods, Corporate Rd, Ahmedabad,Gujarat 380051</p>
                <p class="mb-2"><i class="fa fa-phone-alt text-white mr-3"></i>+91-9727810589</p>
                <p><i class="fa fa-envelope text-white mr-3"></i>royalbike@example.com</p>
                <h6 class="text-uppercase text-white py-2">Follow Us</h6>
                <div class="d-flex justify-content-start">
                    <a class="btn btn-lg btn-dark btn-lg-square mr-2" href="https://twitter.com/DhavalGohel07"><i class="fab fa-twitter"></i></a>
                    <a class="btn btn-lg btn-dark btn-lg-square mr-2" href="https://www.facebook.com/dhaval.gohel.906638/"><i class="fab fa-facebook-f"></i></a>
                    <a class="btn btn-lg btn-dark btn-lg-square mr-2" href="https://www.linkedin.com/in/dhaval-gohel-045077217/"><i class="fab fa-linkedin-in"></i></a>
                    <a class="btn btn-lg btn-dark btn-lg-square" href="https://www.instagram.com/_dhaval.11/"><i class="fab fa-instagram"></i></a>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 mb-5">
                <h4 class="text-uppercase text-light mb-4">Usefull Links</h4>
                <div class="d-flex flex-column justify-content-start">
                     <a class="text-body mb-2" href="https://www.royalenfield.com/in/en/legal/privacy-policy/#:~:text=Royal%20Enfield%20will%20collect%20adequate,occasion%20of%20change%20of%20purpose."><i class="fa fa-angle-right text-white mr-2"></i>Private Policy</a>
                    <a class="text-body mb-2" href="HomePage.aspx"><i class="fa fa-angle-right text-white mr-2"></i>Home</a>
                    <a class="text-body mb-2" href="service.aspx"><i class="fa fa-angle-right text-white mr-2"></i>Service</a>
                    <a class="text-body mb-2" href="detail.aspx"><i class="fa fa-angle-right text-white mr-2"></i>Bike Details</a>
                    <a class="text-body mb-2" href="https://www.royalenfield.com/in/en/legal/terms-and-conditions/"><i class="fa fa-angle-right text-white mr-2"></i>Terms & Condition</a>
                    <a class="text-body" href="contact.aspx"><i class="fa fa-angle-right text-white mr-2"></i>Contact us</a>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 mb-5">
                <h4 class="text-uppercase text-light mb-4">Bike Gallery</h4>
                <div class="row mx-n1">
                    <div class="col-4 px-1 mb-2">
                        <a href="https://www.pngitem.com/pimgs/m/151-1516714_long-royal-enfield-ride-hd-png-download.png"><img class="w-100" src="Images/g-1.jpg" alt=""></a>
                    </div>
                    <div class="col-4 px-1 mb-2">
                        <a href="https://cdn.pixabay.com/photo/2016/09/02/14/23/bike-rider-1639323__480.jpg"><img class="w-100" src="Images/g-2.png" alt=""></a>
                    </div>
                    <div class="col-4 px-1 mb-2">
                        <a href="https://www.webbikeworld.com/wp-content/uploads/2019/11/Trial-5.png"><img class="w-100" src="Images/g-3.png" alt=""></a>
                    </div>
                    <div class="col-4 px-1 mb-2">
                        <a href="https://images.squarespace-cdn.com/content/v1/5891fc231b10e3abb993bb36/1606156885593-IOHFMACO8HJI2D998XA6/H-DRacing8.png"><img class="w-100" src="Images/g-4.jpeg" alt=""></a>
                    </div>
                    <div class="col-4 px-1 mb-2">
                        <a href="https://editorial.pxcrush.net/bikesales/general/editorial/26-wepj.jpg?width=100&height=66?width=100&height=66"><img class="w-100" src="Images/g-5.jpg" alt=""></a>
                    </div>
                    <div class="col-4 px-1 mb-2">
                        <a href="https://cdn.visordown.com/Hunter-350-Visordown-review-lead-image%20%2817%29.jpg"><img class="w-100" src="Images/g-6.jpg" alt=""></a>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 mb-5">
               <h4 class="text-uppercase text-light mb-4">Newsletter</h4>
                <p class="mb-4">Royal Enfield launched a new lineup of cruiser motorcycles on 6 November 2020. It replaced the Thunderbird 350 and 350X series which were discontinued earlier that year</p>
                <div class="w-100 mb-3">
                    <div class="input-group">
                        <input type="text" class="form-control bg-dark border-dark" style="padding: 20px;" placeholder="Your Email">
                        <div class="input-group-append">
                            <button class="text-uppercase px-3" style="color:azure"><a href="Sign_Up.aspx">Sign Up</a></button>
                        </div>
                    </div>
                </div>
                <i>The company operates manufacturing plants in Chennai in India.</i>
            </div>
        </div>
    </div>
  <%--  <div class="container-fluid bg-dark py-4 px-sm-3 px-md-5">
        <p class="mb-2 text-center text-body">&copy; <a href="#">Your Site Name</a>. All Rights Reserved.</p>
        <p class="m-0 text-center text-body">Designed by <a href="https://htmlcodex.com">HTML Codex</a></p>
    </div>--%>
    <!-- Footer End -->


    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="fa fa-angle-double-up"></i></a>


    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="lib/tempusdominus/js/moment.min.js"></script>
    <script src="lib/tempusdominus/js/moment-timezone.min.js"></script>
    <script src="lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
        </form>
</body>

</html>