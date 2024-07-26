<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="booking.aspx.cs" Inherits="RoyalEnfield.booking" %>

<!DOCTYPE html>
<html lang="en">

<head>
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
                                <a href="detail.aspx" class="dropdown-item">Bikes Detail</a>
                                <a href="booking.aspx" class="dropdown-item active">Bikes Booking</a>
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



    <!-- Car Booking Start -->
        <br/>
        <br/>
    <div class="container-fluid pb-5">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <h2 class="mb-4">Personal Detail</h2>
                    <div class="mb-5">
                        <div class="row">
                            <div class="col-6 form-group">
                                 <asp:TextBox ID="b_first_name" class="form-control p-4" MaxLength="50" PlaceHolder="First Name" runat="server" required /> 
                            </div>
                            <div class="col-6 form-group">
                               <asp:TextBox ID="b_last_name" class="form-control p-4" MaxLength="50" PlaceHolder="Last Name" runat="server" required /> 
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-6 form-group">
                                 <asp:TextBox ID="b_email" class="form-control p-4" MaxLength="50" PlaceHolder="Email" runat="server" required Textmod="Email"/> 
                            </div>
                            <div class="col-6 form-group">
                                <asp:TextBox ID="b_phone" class="form-control p-4" MaxLength="0" PlaceHolder="Phone Number" runat="server" required /> 
                            </div>
                        </div>
                    </div>
                    <h2 class="mb-4">Booking Detail</h2>
                    <div class="mb-5">
                        <div class="row">
                            <div class="col-6 form-group">
                               
                                <asp:TextBox ID="b_Addline1" class="form-control p-4" MaxLength="50" PlaceHolder="Enter Address line 1" runat="server" required /> 
                            </div>
                            <div class="col-6 form-group">
                                
                                 <asp:TextBox ID="b_Addline2" class="form-control p-4" MaxLength="50" PlaceHolder="Enter Address line 2" runat="server" required /> 
                            </div>
                            </div>
                        <div class="row">
                            <div class="col-6 form-group">
                               
                                <asp:TextBox ID="b_nearplace" class="form-control p-4" MaxLength="50" PlaceHolder="Nearest Place" runat="server" required /> 
                            </div>
                            <div class="col-6 form-group">
                                
                                 <asp:TextBox ID="b_area" class="form-control p-4" MaxLength="50" PlaceHolder="Area" runat="server" required /> 
                            </div>
                            </div>
                        <div class="row">
                            <div class="col-6 form-group">
                                
                                 <asp:TextBox ID="b_city" class="form-control p-4" MaxLength="50" PlaceHolder="City" runat="server" required />
                            </div>
                            <div class="col-6 form-group">
                               
                                 <asp:TextBox ID="b_state" class="form-control p-4" MaxLength="50" PlaceHolder="State" runat="server" required />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-6 form-group">
                              
                                 <asp:TextBox ID="b_zipcode" class="form-control p-4" MaxLength="50" PlaceHolder="Zip Code" runat="server" required />
                            </div>
                        </div>
                         
                        <div class="form-group">
                             <asp:TextBox class="form-control py-3 px-4" ID="b_special_req" MaxLength="50" PlaceHolder="Message" runat="server" TextMode="Multiline" required/>
                        </div>
                        <div class="form-group">
                            <br /><h3>Payment Methods</h3><br />
                            <div class="custom-control custom-radio">
                                <asp:RadioButton id="Cash" runat="server" GroupName="pay" Text="Cash"/>
                            <br />
                                <asp:RadioButton id="Credit"  runat="server" GroupName="pay" Text="Credit"/>
                          
                            </div>
                        </div>
                    </div>
                </div>   
                        <asp:Button class="btn btn-block btn-primary py-3" ID="bookbtn" runat="server" Text="Book Now" OnClick="book_now"/>
                    </div>
                </div>
            </div>
    <!-- Car Booking End -->


    <!-- Vendor Start -->
  <%--  <div class="container-fluid py-5">
        <div class="container py-5">
            <div class="owl-carousel vendor-carousel">
                <div class="bg-light p-4">
                    <img src="img/vendor-1.png" alt="">
                </div>
                <div class="bg-light p-4">
                    <img src="img/vendor-2.png" alt="">
                </div>
                <div class="bg-light p-4">
                    <img src="img/vendor-3.png" alt="">
                </div>
                <div class="bg-light p-4">
                    <img src="img/vendor-4.png" alt="">
                </div>
                <div class="bg-light p-4">
                    <img src="img/vendor-5.png" alt="">
                </div>
                <div class="bg-light p-4">
                    <img src="img/vendor-6.png" alt="">
                </div>
                <div class="bg-light p-4">
                    <img src="img/vendor-7.png" alt="">
                </div>
                <div class="bg-light p-4">
                    <img src="img/vendor-8.png" alt="">
                </div>
            </div>
        </div>
    </div>--%>
    <!-- Vendor End -->


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
    <%-- <div class="container-fluid bg-dark py-4 px-sm-3 px-md-5">
        <p class="mb-2 text-center text-body">&copy; <a href="#">Your Site Name</a>. All Rights Reserved.</p>
        <p class="m-0 text-center text-body">Designed by <a href="https://htmlcodex.com">HTML Codex</a></p>
    </div>--%>
    <!-- Footer End -->

          <!-- loader -->
<div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>
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