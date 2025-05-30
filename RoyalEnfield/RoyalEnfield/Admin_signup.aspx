﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_signup.aspx.cs" Inherits="RoyalEnfield.admin_signup" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>DASHMIN - Bootstrap Admin Template</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600;700&display=swap" rel="stylesheet">
    
    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
   <link href="Admin_lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="Admin_lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="Admin_css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="Admin_css/style.css" rel="stylesheet">
</head>

<body>
    <form runat="server">
    <div class="container-xxl position-relative bg-white d-flex p-0">
        <!-- Spinner Start -->
        <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
            <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
                <span class="sr-only">Loading...</span>
            </div>
        </div>
        <!-- Spinner End -->


        <!-- Sign Up Start -->
        <div class="container-fluid">
            <div class="row h-100 align-items-center justify-content-center" style="min-height: 100vh;">
                <div class="col-12 col-sm-8 col-md-6 col-lg-5 col-xl-4">
                    <div class="bg-light rounded p-4 p-sm-5 my-4 mx-3">
                        <div class="d-flex align-items-center justify-content-between mb-3">
                                <h3 class="text-primary">Create Your Account</h3>
                        </div>
                        <div class="form-floating mb-3">
                            <asp:TextBox ID="adminuser" class="form-control"  MaxLength="50" PlaceHolder="Username" runat="server"/>
                            <label for="floatingText">Username</label>
                        </div>
                        <div class="form-floating mb-3">
                            <asp:TextBox class="form-control" ID="adminemail" MaxLength="50" PlaceHolder="Username" runat="server" TextMode="Email"/>
                            <label for="floatingInput">Email address</label>
                        </div>
                        <div class="form-floating mb-4">
                         <asp:TextBox class="form-control" ID="adminpass" MaxLength="20" PlaceHolder="Password" runat="server" TextMode="Password"/>
                            <label for="floatingPassword">Password</label>
                        </div>
                        <div class="d-flex align-items-center justify-content-between mb-4">
                           
                            <a href="">Forgot Password..?</a>
                        </div>
                        <asp:Button class="btn btn-primary py-3 w-100 mb-4" Text="Sign Up" runat="server" OnClick="admin_register" />
                        <%--<button type="submit" class="btn btn-primary py-3 w-100 mb-4" OnClick="Admin_signup">Sign Up</button>--%>
                        <p class="text-center mb-0">Already have an Account? <a href="admin_signin.aspx">Sign In</a></p>
                    </div>
                </div>
            </div>
        </div>
        <!-- Sign Up End -->
    </div>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="Admin_lib/chart/chart.min.js"></script>
    <script src="Admin_lib/easing/easing.min.js"></script>
    <script src="Admin_lib/waypoints/waypoints.min.js"></script>
    <script src="Admin_lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="Admin_lib/tempusdominus/js/moment.min.js"></script>
    <script src="Admin_lib/tempusdominus/js/moment-timezone.min.js"></script>
    <script src="Admin_lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

    <!-- Template Javascript -->
    <script src="Admin_js/main.js"></script>
        </form>
</body>

</html>