<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Addbike.aspx.cs" Inherits="RoyalEnfield.add_bike" %>


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
    <style>
        table {
        
            width:100%;
            border:2px solid black;
            border-radius:5px;
            
        }
         
        
       .dataview th {

            padding: 15px 20px;
            border-radius:100px;
            border: 1px solid black;
            padding-bottom: 4px;
            padding-top: 4px;
            background-color: darkgray;

        }

        .dataview td {

            padding: 10px 7px;
            border: 1px solid black;
            padding-bottom: 4px;
            padding-top: 4px;
            text-align: center;


        }
    </style>
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


        <!-- Sidebar Start -->
        <div class="sidebar pe-4 pb-3">
            <nav class="navbar bg-light navbar-light">
               <a href="#" class="navbar-brand mx-4 mb-3">
                    <h3 class="text-primary"><i class="fa fa-motorcycle me-2">Royal Enfield</i></h3>
                </a>
                <div class="d-flex align-items-center ms-4 mb-4">
                    <div class="position-relative">
                        <i class="fa fa-user me-2"></i>
                        <div class="bg-success rounded-circle border border-2 border-white position-absolute end-0 bottom-0 p-1"></div>
                    </div>
                    <div class="ms-3">
                        <h6 class="mb-0">Dhaval Gohel</h6>
                        <span>Admin</span>
                    </div>
                </div>
                <div class="navbar-nav w-100">
                     <div class="navbar-nav w-100">
                     <a href="Admin_dashboard.aspx" class="nav-item nav-link"><i class="fa fa-tachometer-alt me-2"></i>Dashboard</a>
                    <a href="Addbike.aspx" class="nav-item nav-link"><i class="fa fa-motorcycle me-2"></i>Add Bikes Details</a>
                    <a href="Admin_user.aspx" class="nav-item nav-link"><i class="fa fa-table me-2"></i>User</a>
                         <a href="Admin_Service.aspx" class="nav-item nav-link"><i class="fa fa-table me-2"></i>Service Info</a>
					<a href="Admin_table.aspx" class="nav-item nav-link"><i class="fa fa-table me-2"></i>Admin</a>
					<a href="Admin_contact.aspx" class="nav-item nav-link"><i class="fa fa-table me-2"></i>Contact</a>
					<a href="Admin_signin.aspx" class="nav-item nav-link"><i class="fa fa-user me-2"></i>Logout</a>
                </div>
                </div>
                </div>
            </nav>
        </div>
        <!-- Sidebar End -->


        <!-- Content Start -->
        <div class="content">
            <!-- Navbar Start -->
          <!-- Navbar Start -->
            <nav class="navbar navbar-expand bg-light navbar-light sticky-top px-4 py-0">
                <a href="index.html" class="navbar-brand d-flex d-lg-none me-4">
                    <h2 class="text-primary mb-0"><i class="fa fa-hashtag"></i></h2>
                </a>
                <a href="#" class="sidebar-toggler flex-shrink-0">
                    <i class="fa fa-bars"></i>
                </a>
                
                <div class="navbar-nav align-items-center ms-auto">
                    <div class="nav-item dropdown">
                        
                        <div class="dropdown-menu dropdown-menu-end bg-light border-0 rounded-0 rounded-bottom m-0">
                            <a href="#" class="dropdown-item">
                                <div class="d-flex align-items-center">
                                    <img class="rounded-circle" src="img/user.jpg" alt="" style="width: 40px; height: 40px;">
                                    <div class="ms-2">
                                        <h6 class="fw-normal mb-0">Jhon send you a message</h6>
                                        <small>15 minutes ago</small>
                                    </div>
                                </div>
                            </a>
                            <hr class="dropdown-divider">
                            <a href="#" class="dropdown-item">
                                <div class="d-flex align-items-center">
                                    <img class="rounded-circle" src="img/user.jpg" alt="" style="width: 40px; height: 40px;">
                                    <div class="ms-2">
                                        <h6 class="fw-normal mb-0">Jhon send you a message</h6>
                                        <small>15 minutes ago</small>
                                    </div>
                                </div>
                            </a>
                            <hr class="dropdown-divider">
                            <a href="#" class="dropdown-item">
                                <div class="d-flex align-items-center">
                                    <img class="rounded-circle" src="img/user.jpg" alt="" style="width: 40px; height: 40px;">
                                    <div class="ms-2">
                                        <h6 class="fw-normal mb-0">Jhon send you a message</h6>
                                        <small>15 minutes ago</small>
                                    </div>
                                </div>
                            </a>
                            <hr class="dropdown-divider">
                            <a href="#" class="dropdown-item text-center">See all message</a>
                        </div>
                    </div>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">
                            <i class="fa fa-bell me-lg-2"></i>
                            <span class="d-none d-lg-inline-flex">Notificatin</span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-end bg-light border-0 rounded-0 rounded-bottom m-0">
                            <a href="#" class="dropdown-item">
                                <h6 class="fw-normal mb-0">Profile updated</h6>
                                <small>15 minutes ago</small>
                            </a>
                            <hr class="dropdown-divider">
                            <a href="#" class="dropdown-item">
                                <h6 class="fw-normal mb-0">New user added</h6>
                                <small>15 minutes ago</small>
                            </a>
                            <hr class="dropdown-divider">
                            <a href="#" class="dropdown-item">
                                <h6 class="fw-normal mb-0">Password changed</h6>
                                <small>15 minutes ago</small>
                            </a>
                            <hr class="dropdown-divider">
                            <a href="#" class="dropdown-item text-center">See all notifications</a>
                        </div>
                    </div>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">
                            <img class="rounded-circle me-lg-2" src="Images/user.jpg" alt="" style="width: 40px; height: 40px;">
                            <span class="d-none d-lg-inline-flex">Dhaval Gohel</span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-end bg-light border-0 rounded-0 rounded-bottom m-0">
                            <a href="admin_signup.aspx" class="dropdown-item">Log Out</a>
                        </div>
                    </div>
                </div>
            </nav>
            <!-- Navbar End -->


             <%--Add Form--%>
               <br/>
        <br/>
    <div class="container-fluid pb-5">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <h2 class="mb-4">Add Bike Details</h2>
                    <div class="mb-5">
                        <div class="row">
                            
                            <div class="col-6 form-group">
                                 <asp:TextBox ID="bike_name" class="form-control p-4" MaxLength="50" PlaceHolder="Bike Name" runat="server" required /> <br />
                            </div>
                            <div class="col-6 form-group">
                               <asp:TextBox ID="bike_model" class="form-control p-4" MaxLength="50" PlaceHolder="Bike Model" runat="server" required /> 
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-6 form-group">
                                 <asp:TextBox ID="bike_price" class="form-control p-4" MaxLength="50" PlaceHolder="EX-Showroom Price" runat="server" required Textmod="Email"/> <br/>
                            </div>
                            <div class="col-6 form-group">
                                <asp:TextBox ID="bike_engine" class="form-control p-4" MaxLength="0" PlaceHolder="Engine" runat="server" required /> <br />
                            </div>
                        </div>
                 
                        <div class="row">
                            <div class="col-6 form-group">
                               
                                <asp:TextBox ID="bike_power" class="form-control p-4" MaxLength="50" PlaceHolder="Power" runat="server" required /> <br />
                            </div>
                            <div class="col-6 form-group">
                                
                                 <asp:TextBox ID="bike_milege" class="form-control p-4" MaxLength="50" PlaceHolder="Milege" runat="server" required /> <br />
                            </div>
                            </div>
                        <div class="row">
                            <div class="col-6 form-group">
                               
                                <asp:TextBox ID="bike_torque" class="form-control p-4" MaxLength="50" PlaceHolder="Torque" runat="server" required /> <br />
                            </div>
                            <div class="col-6 form-group">
                                
                                 <asp:TextBox ID="bike_tyre" class="form-control p-4" MaxLength="50" PlaceHolder="Tyre type" runat="server" required /> <br />
                            </div>
                             <div class="col-12 row- form-group">
                                
                                 <asp:TextBox ID="bike_about" class="form-control p-4" MaxLength="500" PlaceHolder="About Bike" runat="server"  required /> <br />
                            </div>
                            </div><br />
                            <div class="col-6 form-group">
            
                                   <asp:FileUpload ID= "bike_image" class="form-control p-2" runat = "server" required /><br/>
                             </div>
                      
                        <asp:Button class="btn btn-block btn-primary py-2" runat="server" Text="Add Detail" OnClick="add_details"/><br />
                    </div>
                </div>
            </div>
            
         
          </div>
                  <center><h1 style="background-color:cornflowerblue; padding:10px 10px; border-radius:20px;">View Details</h1></center>

         <br>

                        <table class="dataview">

                            <tr>

                              
                               
                                <td><b>Name</b></td>
                                <td><b>Model</b></td>
                                <td><b>Price</b></td>
                                <td><b>Engine</b></td>
                                <td><b>Power</b></td>
                                <td><b>Milege</b></td>
                                <td><b>Torque</b></td>
                                <td><b>Tyretype</b></td>
                                <td><b>About</b></td>
                                <td><b>Image</b></td>
                                <td><b>Edit</b></td>
                                <td><b>Delete</b></td>


                            </tr>

                             <% for (int i = 0; i < bname.Length; i++) { %>


                            <tr>
                                
                                <td><%=bname[i]%></td>
                                <td><%=bmodel[i]%></td>
                                <td><%=bprice[i]%></td>
                                <td><%=bengine[i]%></td>
                                <td><%=bpower[i]%></td>
                                <td><%=bmilege[i]%></td>
                                <td><%=btorque[i]%></td>
                                <td><%=btyre[i]%></td>
                                <td><%=babout[i]%></td>
                                
                                <td><img src="<%=bimage[i]%>" height="100px" width="100px"></td>
                                <td><a href="Bike_update.aspx?uid= <%=bid[i]%>">📝</a></td>
                                <td><a href="delete.aspx?id= <%=bid[i]%>">❌</a></td>
                           
                             <%--   <asp:LinkButton ID="LinkButton1" runat="server" OnCommand="delete" CommandArgument='shubham'>javatpoint</asp:LinkButton>--%>

                            </tr>

                        
                      
                        <% }%>

                            </table>


        
        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
    </div>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/chart/chart.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="lib/tempusdominus/js/moment.min.js"></script>
    <script src="lib/tempusdominus/js/moment-timezone.min.js"></script>
    <script src="lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

    <!-- Template Javascript -->
    <script src="Admin_js/main.js"></script>
        </form>
</body>

</html>