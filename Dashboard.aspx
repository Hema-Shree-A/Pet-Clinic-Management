<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="Dashboard" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Stylesheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
     
    <!-- Topbar Start -->
    <div class="container-fluid">
        <div class="row bg-secondary py-2 px-lg-5">
            <div class="col-lg-6 text-center text-lg-left mb-2 mb-lg-0">
                <div class="d-inline-flex align-items-center">
                  <h5 class="text-white  pr-3 text-md-center">Be Pawsitive!🐶 </h5>
                   
                    
                </div>
            </div>
           
        </div>
        <div class="row py-3 px-lg-5">
            <div class="col-lg-4">
                <a href="UR.aspx" class="navbar-brand d-none d-lg-block">
                    <img src="img/logo.png" style="height: 67px; width: 114px" />
                    
                </a>
            </div>
            <div class="col-lg-8 text-center text-lg-right">
                <div class="d-inline-flex align-items-center">
                    <div class="d-inline-flex flex-column text-center pr-3 border-right">
                        <h6>Opening Hours</h6>
                        <p class="m-0">8.00AM - 9.30PM</p>
                    </div>
                    <div class="d-inline-flex flex-column text-center px-3 border-right">
                        <h6>Email Us</h6>
                        <p class="m-0">ur.pets2024@gmail.com</p>
                    </div>
                    <div class="d-inline-flex flex-column text-center pl-3">
                        <h6>Call Us</h6>
                        <p class="m-0">63607 50465</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Topbar End -->


    <!-- Navbar Start -->
    <div class="container-fluid p-0">
        <nav class="navbar navbar-expand-lg bg-dark navbar-dark py-3 py-lg-0 px-lg-5">
            <a href="" class="navbar-brand d-block d-lg-none">
                <h1 class="m-0 display-5 text-capitalize font-italic text-white"><span class="text-primary"></span></h1>
            </a>
            <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-between px-3" id="navbarCollapse">
                <div class="navbar-nav mr-auto py-0">
                    <a href="UR.aspx" class="nav-item nav-link active">Home</a>
                    <a href="About.aspx" class="nav-item nav-link">About</a>                    
                    <a href="Booking.aspx" class="nav-item nav-link">Booking</a>
                    <a href="Service.aspx" class="nav-item nav-link">Service</a>
                    <a href="Contact.aspx" class="nav-item nav-link">Contact</a>                    
                    <a href="Registration.aspx" class="nav-item nav-link">Register</a>
                    <a href="Login.aspx" class="nav-item nav-link">Login</a>
                </div>
                
            </div>
        </nav>
    </div>
    <!-- Navbar End -->
      <div class="container-fluid page-body-wrapper">
        <!-- partial:partials/_sidebar.html -->
        <nav class="sidebar sidebar-offcanvas" id="sidebar">
          <ul class="nav">
            <li class="nav-item nav-category">My Account</li>
            <li class="nav-item">
              <a class="nav-link" href="Dashboard.aspx">
                <span class="icon-bg"><i class="mdi mdi-cube menu-icon"></i></span>
                <span class="menu-title">Dashboard</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="View_app.aspx">
                <span class="icon-bg"><i class="mdi mdi-cube menu-icon"></i></span>
                <span class="menu-title">View Appointments</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="AccountDetails.aspx">
                <span class="icon-bg"><i class="mdi mdi-cube menu-icon"></i></span>
                <span class="menu-title">Account Details</span>
              </a>
            </li>
            
            <li class="nav-item">
              <a class="nav-link" href="Booking.aspx">
                <span class="icon-bg"><i class="mdi mdi-cube menu-icon"></i></span>
                <span class="menu-title">Book an Appointment</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="Packages.aspx">
                <span class="icon-bg"><i class="mdi mdi-contacts menu-icon"></i></span>
                <span class="menu-title">Packages</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="URRewards.aspx">
                <span class="icon-bg"><i class="mdi mdi-format-list-bulleted menu-icon"></i></span>
                <span class="menu-title">UR Rewards</span>
              </a>
            </li>
           <li class="nav-item">
              <a class="nav-link" href="Facts.aspx">
                <span class="icon-bg"><i class="mdi mdi-format-list-bulleted menu-icon"></i></span>
                <span class="menu-title">Facts!</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="Login.aspx">
               <span class="icon-bg"><i class="mdi mdi-format-list-bulleted menu-icon"></i></span>
              <span class="menu-title">Logout</span>  
              </a>
            </li>
           
          </ul>
        </nav>
        <!-- partial -->
        <div class="main-panel">
          <div class="content-wrapper">
            
            <div class="d-xl-flex justify-content-between align-items-start">
              <h2 class="text-dark font-weight-bold mb-2">Welcome Petpals! </h2>
              
            </div>
        
                    <div class="row">
                      <div class="col-12 grid-margin">
                        <div class="card bg-gradient-danger">
                      
                          <div class="card-body">
                           <h2 class="card-title mb-0 text-light"><br />
                                     </h2>
                                 
                            <div class="row">
                              <div class="col-sm-12">
                                <div class="d-flex justify-content-between align-items-center mb-4 ">
                                 <img style="left" src="App_Themes/Theme1/DBassets/DB1.png" />
                                 
                                   
                                 
                                </div>
                              </div>
                             
                              <div class="col-lg-9 col-sm-8 grid-margin  grid-margin-lg-0">
                                <div class="pl-0 pl-lg-4 ">
                                  <div class="d-xl-flex justify-content-between align-items-center mb-2">
                                    <div class="d-lg-flex align-items-center mb-lg-2 mb-xl-0">
                                      <h3 class="text-dark font-weight-bold mr-2 mb-0"></h3>
                                      <h5 class="mb-0"></h5>
                                    </div>
                                    <div class="d-lg-flex">
                                      <p class="mr-2 mb-0"></p>
                                      <p class="text-dark font-weight-bold mb-0"></p>
                                    </div>
                                  </div>
                                
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                   
          <!-- partial:partials/_footer.html -->
          <footer class="footer">
            <div class="footer-inner-wraper">
              <div class="d-sm-flex justify-content-center justify-content-sm-between">
                <span class="text-muted d-block text-center text-sm-left d-sm-inline-block">© 2024 UR Pets. All Rights Reserved. Designed By Hema, Disha, Navya.</span>
             
              </div>
            </div>
          </footer>
          <!-- partial -->
        </div>
        <!-- main-panel ends -->
      </div>
      <!-- page-body-wrapper ends -->
    </div>
    <!-- container-scroller -->
    <!-- plugins:js -->
    <script src="assets/vendors/js/vendor.bundle.base.js"></script>
    <!-- endinject -->
    <!-- Plugin js for this page -->
    <script src="assets/vendors/chart.js/Chart.min.js"></script>
    <script src="assets/vendors/jquery-circle-progress/js/circle-progress.min.js"></script>
    <!-- End plugin js for this page -->
    <!-- inject:js -->
    <script src="assets/js/off-canvas.js"></script>
    <script src="assets/js/hoverable-collapse.js"></script>
    <script src="assets/js/misc.js"></script>
    <!-- endinject -->
    <!-- Custom js for this page -->
    <script src="assets/js/dashboard.js"></script>
    <!-- End custom js for this page -->
  
    </div>
    </form>
</body>
</html>
