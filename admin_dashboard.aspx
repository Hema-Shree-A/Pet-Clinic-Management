<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin_dashboard.aspx.cs" Inherits="admin_dashboard" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
    <body>
     
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



    <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" href="admin_dashboard.aspx">UR Admin</a>
            
        </nav>

        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">

                            <div class="sb-sidenav-menu-heading">Admin</div>
                            <a class="nav-link" href="admin_dashboard.aspx">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                Dashboard
                            </a>
                            <div class="sb-sidenav-menu-heading">Account</div>
                     
                         
                            <a class="nav-link" href="Admin_accountdetails.aspx">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                Account Details
                            </a>
                            <a class="nav-link" href="Admin_viewapp.aspx">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                View Appointments
                            </a>
                             <a class="nav-link" href="PrivacyPolicy.aspx">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                Privacy & Policy
                            </a>
                            <div class="sb-sidenav-menu-heading"><a href="admin_login.aspx">Logout</a></div>
                            


                        </div>
                    </div>
                    <div class="sb-sidenav-footer">
                        <div class="small">Logged in as:<br />
                            UR Admin</div>
                    </div>
                </nav>
            </div>


            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">Dashboard</h1>
                        





                        <br />
                        <br />
                        





                        <div class="row">
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-primary text-white mb-4">
                                    <div class="card-body">Registrations</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="Admin_registrated.aspx"><u>View Details</u></a>
                                        <div class="small text-white"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-warning text-white mb-4">
                                    <div class="card-body">Bookings</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="Admin_viewapp.aspx"><u>View Details</u></a>
                                        <div class="small text-white"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-success text-white mb-4">
                                    <div class="card-body">Services</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="Admin_listofservices.aspx"><u>View Details</u></a>
                                        <div class="small text-white"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-danger text-white mb-4">
                                    <div class="card-body">Staff</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="Admin_Staff.aspx"><u>View Details</u></a>
                                        <div class="small text-white"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                  
                        
                    </div>
                </main>
              </div>
        </div> 
  
    <!-- Footer Start -->
    <div class="container-fluid bg-dark text-white mt-5 py-5 px-sm-3 px-md-5">
        <div class="row pt-5">
            <div class="col-lg-4 col-md-12 mb-5">
                <h1 class="mb-3 display-5 text-capitalize text-white"><a href="UR.aspx" class="navbar-brand d-none d-lg-block">
                    <img src="img/logo.png" style="height: 67px; width: 114px" />
                    
                </a></h1>
                <p class="m-0">At UR Pets, we believe in combining the Best of Human Empathy, and Process excellence to deliver the most Understanding Experience for Pet Parents.</p>
            </div>
            <div class="col-lg-8 col-md-12">
                <div class="row">
                    <div class="col-md-4 mb-5">
                        <h5 class="text-primary mb-4 justify-content-start">Get In Touch</h5>
                        <p class="style4">Wilson Garden, Bengaluru</p>
                        <p class="style4">63607 50465</p>
                        <p class="style4">ur.pets2024@gmail.com</p>
                        
                    </div>
                    <div class="col-md-4 mb-5">
                        <h5 class="text-primary mb-4">Popular Links</h5>
                        <div class="d-flex flex-column justify-content-start">
                             <a href="UR.aspx" class="nav-item nav-link active text-white">Home</a>
                             <a href="About.aspx" class="nav-item nav-link text-white">About</a>
                             <a href="Booking.aspx" class="nav-item nav-link text-white">Booking</a>
                             <a href="Service.aspx" class="nav-item nav-link text-white">Service</a>
                            
                             
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid text-white py-4 px-sm-3 px-md-5" style="background: #111111;">
        <div class="row">
            <div class="col-md-6 text-center text-md-left mb-3 mb-md-0">
                <p class="m-0 text-white">
                    &copy; <a class="text-white font-weight-bold" href="#">2024 UR Pets</a>. All Rights Reserved. Designed by Hema, Disha, Navya.
                   
                </p>
            </div>
            
        </div>
    </div>
    <!-- Footer End -->

            
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="assets/demo/chart-area-demo.js"></script>
        <script src="assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js" crossorigin="anonymous"></script>
        <script src="js/datatables-simple-demo.js"></script>
    </body>
</html>
