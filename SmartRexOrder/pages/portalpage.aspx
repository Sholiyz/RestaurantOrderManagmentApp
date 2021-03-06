﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="portalpage.aspx.cs" Inherits="pages_portalpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>pasture home</title>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="images/favicon.png" />
    <%--<title>Pasture Dashboard Template</title>--%>
    <link href="../assets/css/lib/sweetalert/sweetalert.css" rel="stylesheet" />
    <link href="../assets/css/lib/toastr/toastr.min.css" rel="stylesheet" />
    <!-- Bootstrap Core CSS -->
    <link href="../assets/css/lib/bootstrap/bootstrap.min.css" rel="stylesheet" />
    <!-- Custom CSS -->

    <link href="../assets/css/lib/calendar2/semantic.ui.min.css" rel="stylesheet" />
    <link href="../assets/css/lib/calendar2/pignose.calendar.min.css" rel="stylesheet" />
    <link href="../assets/css/lib/owl.carousel.min.css" rel="stylesheet" />
    <link href="../assets/css/lib/owl.theme.default.min.css" rel="stylesheet" />
    <link href="../assets/css/helper.css" rel="stylesheet" />
    <link href="../assets/css/style.css" rel="stylesheet" />
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:** -->
    <!--[if lt IE 9]>
    <script src="https:**oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https:**oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->

    <script type='text/javascript'>
    
    $(function(){
    
        var iFrames = $('iframe');
      
    	function iResize() {
    	
    		for (var i = 0, j = iFrames.length; i < j; i++) {
    		  iFrames[i].style.height = iFrames[i].contentWindow.document.body.offsetHeight + 'px';}
    	    }
    	    
        	if ($.browser.safari || $.browser.opera) { 
        	
        	   iFrames.load(function(){
        	       setTimeout(iResize, 0);
               });
            
        	   for (var i = 0, j = iFrames.length; i < j; i++) {
        			var iSource = iFrames[i].src;
        			iFrames[i].src = '';
        			iFrames[i].src = iSource;
               }
               
        	} else {
        	   iFrames.load(function() { 
        	       this.style.height = this.contentWindow.document.body.offsetHeight + 'px';
        	   });
        	}
        
    });


</script>
      <script type='text/javascript'>
      function myFunction(event) {
        //var clickedElement = event.target;
        var id = event.target.id;
        var aelement = document.getElementById(id);
        alert("the clicked id is "+this.id+".aspx");
        // Do important stuff with clickedElement.
 }
    function GetNav() {
        $("li").click(function (event) {
            //alert(event.target.id );
            
            var iframe = document.getElementById("maincontentframe");
            iframe.src = "index-iframe.aspx";
        });
    }
</script>
</head>
<body class="fix-header fix-sidebar">
    
       <form id="form1" runat="server">
           <asp:ScriptManager runat="server"></asp:ScriptManager>
        <%--<div class="fix-header fix-sidebar">--%>
        <!-- Preloader - style you can find in spinners.css -->
        <div class="preloader">
            <svg class="circular" viewBox="25 25 50 50">
                <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="2" stroke-miterlimit="10" />
            </svg>
        </div>
        <!-- Main wrapper  -->
        <div id="main-wrapper">
            <!-- header header  -->
            <div class="header">
                <nav class="navbar top-navbar navbar-expand-md navbar-light">
                    <!-- Logo -->
                    <div class="navbar-header">
                        <a class="navbar-brand" href="index.html">
                            <!-- Logo icon -->
                            <b>
                                <img src="../assets/images/logo.png" alt="homepage" class="dark-logo" /></b>
                            <!--End Logo icon -->
                            <!-- Logo text -->
                            <span>
                                <img src="../assets/images/logo-text.png" alt="homepage" class="dark-logo" /></span>
                        </a>
                    </div>
                    <!-- End Logo -->
                    <div class="navbar-collapse">
                        <!-- toggle and nav items -->
                        <ul class="navbar-nav mr-auto mt-md-0">
                            <!-- This is  -->
                            <li class="nav-item"><a class="nav-link nav-toggler hidden-md-up text-muted  " href="javascript:void(0)"><i class="mdi mdi-menu"></i></a></li>
                            <li class="nav-item m-l-10"><a class="nav-link sidebartoggler hidden-sm-down text-muted  " href="javascript:void(0)"><i class="ti-menu"></i></a></li>
                            <!-- Messages -->
                            <li class="nav-item dropdown mega-dropdown"><a class="nav-link dropdown-toggle text-muted  " href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-th-large"></i></a>
                                <div class="dropdown-menu animated zoomIn">
                                    <ul class="mega-dropdown-menu row">

                                        <li class="col-lg-3 col-xlg-3 m-b-30"></li>
                                        <li class="col-lg-6  m-b-30">
                                            <h4 class="m-b-20">CONTACT US  
                                                <!-- Contact -->
                                                <div>
                                                    <div class="form-group">
                                                        <input type="text" class="form-control" id="exampleInputname1" placeholder="Enter Name" />
                                                    </div>
                                                    <div class="form-group">
                                                        <input type="email" class="form-control" placeholder="Enter email" />
                                                    </div>
                                                    <div class="form-group">
                                                        <textarea class="form-control" id="exampleTextarea" rows="3" placeholder="Message"></textarea>
                                                    </div>
                                                    <button type="submit" class="btn btn-info">Submit</button>
                                                </div>
                                        </li>

                                    </ul>
                                </div>
                            </li>
                            <!-- End Messages -->
                        </ul>
                        <!-- User profile and search -->
                        <ul class="navbar-nav my-lg-0">

                            <!-- Search -->
                            <li class="nav-item hidden-sm-down search-box"><a class="nav-link hidden-sm-down text-muted  " href="javascript:void(0)"><i class="ti-search"></i></a>
                                <div class="app-search">
                                    <input type="text" class="form-control" placeholder="Search here" />
                                    <a class="srh-btn"><i class="ti-close"></i></a>
                                </div>
                            </li>
                            <!-- Comment -->
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle text-muted text-muted  " href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-bell"></i>
                                    <div class="notify"><span class="heartbit"></span><span class="point"></span></div>
                                </a>
                                <div class="dropdown-menu dropdown-menu-right mailbox animated zoomIn">
                                    <ul>
                                        <li>
                                            <div class="drop-title">Notifications</div>
                                        </li>
                                        <li>
                                            <div class="message-center">
                                                <!-- Message -->
                                                <a href="#">
                                                    <div class="btn btn-danger btn-circle m-r-10"><i class="fa fa-link"></i></div>
                                                    <div class="mail-contnet">
                                                        <h5>This is title</h5>
                                                        <span class="mail-desc">Just see the my new admin!</span> <span class="time">9:30 AM</span>
                                                    </div>
                                                </a>
                                                <!-- Message -->
                                                <a href="#">
                                                    <div class="btn btn-success btn-circle m-r-10"><i class="ti-calendar"></i></div>
                                                    <div class="mail-contnet">
                                                        <h5>This is another title</h5>
                                                        <span class="mail-desc">Just a reminder that you have event</span> <span class="time">9:10 AM</span>
                                                    </div>
                                                </a>
                                                <!-- Message -->
                                                <a href="#">
                                                    <div class="btn btn-info btn-circle m-r-10"><i class="ti-settings"></i></div>
                                                    <div class="mail-contnet">
                                                        <h5>This is title</h5>
                                                        <span class="mail-desc">You can customize this template as you want</span> <span class="time">9:08 AM</span>
                                                    </div>
                                                </a>
                                                <!-- Message -->
                                                <a href="#">
                                                    <div class="btn btn-primary btn-circle m-r-10"><i class="ti-user"></i></div>
                                                    <div class="mail-contnet">
                                                        <h5>This is another title</h5>
                                                        <span class="mail-desc">Just see the my admin!</span> <span class="time">9:02 AM</span>
                                                    </div>
                                                </a>
                                            </div>
                                        </li>
                                        <li>
                                            <a class="nav-link text-center" href="javascript:void(0);"><strong>Check all notifications</strong> <i class="fa fa-angle-right"></i></a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <!-- End Comment -->
                            <!-- Messages -->
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle text-muted  " href="#" id="2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-envelope"></i>
                                    <div class="notify" hidden="hidden"><span class="heartbit"></span><span class="point"></span></div>
                                </a>
                                <div class="dropdown-menu dropdown-menu-right mailbox animated zoomIn" aria-labelledby="2">
                                    <ul>
                                        <li>
                                            <div class="drop-title">You have 4 new messages</div>
                                        </li>
                                        <li>
                                            <div class="message-center">
                                                <!-- Message -->
                                                <a href="#">
                                                    <div class="user-img">
                                                        <img src="../assets/images/users/5.jpg" alt="user" class="img-circle">
                                                        <span class="profile-status online pull-right"></span>
                                                    </div>
                                                    <div class="mail-contnet">
                                                        <h5>Michael Qin</h5>
                                                        <span class="mail-desc">Just see the my admin!</span> <span class="time">9:30 AM</span>
                                                    </div>
                                                </a>
                                                <!-- Message -->
                                                <a href="#">
                                                    <div class="user-img">
                                                        <img src="../assets/images/users/2.jpg" alt="user" class="img-circle">
                                                        <span class="profile-status busy pull-right"></span>
                                                    </div>
                                                    <div class="mail-contnet">
                                                        <h5>John Doe</h5>
                                                        <span class="mail-desc">I've sung a song! See you at</span> <span class="time">9:10 AM</span>
                                                    </div>
                                                </a>
                                                <!-- Message -->
                                                <a href="#">
                                                    <div class="user-img">
                                                        <img src="../assets/images/users/3.jpg" alt="user" class="img-circle">
                                                        <span class="profile-status away pull-right"></span>
                                                    </div>
                                                    <div class="mail-contnet">
                                                        <h5>Mr. John</h5>
                                                        <span class="mail-desc">I am a singer!</span> <span class="time">9:08 AM</span>
                                                    </div>
                                                </a>
                                                <!-- Message -->
                                                <a href="#">
                                                    <div class="user-img">
                                                        <img src="../assets/images/users/4.jpg" alt="user" class="img-circle">
                                                        <span class="profile-status offline pull-right"></span>
                                                    </div>
                                                    <div class="mail-contnet">
                                                        <h5>Michael Qin</h5>
                                                        <span class="mail-desc">Just see the my admin!</span> <span class="time">9:02 AM</span>
                                                    </div>
                                                </a>
                                            </div>
                                        </li>
                                        <li>
                                            <a class="nav-link text-center" href="javascript:void(0);"><strong>See all e-Mails</strong> <i class="fa fa-angle-right"></i></a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <!-- End Messages -->
                            <!-- Profile -->
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle text-muted  " href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <img src="../assets/images/users/5.jpg" alt="user" class="profile-pic" /></a>
                                <div class="dropdown-menu dropdown-menu-right animated zoomIn">
                                    <ul class="dropdown-user">
                                        <li><a href="#"><i class="ti-user"></i>Profile</a></li>
                                        <li><a href="#"><i class="ti-wallet"></i>Balance</a></li>
                                        <li><a href="#"><i class="ti-email"></i>Inbox</a></li>
                                        <li><a href="#"><i class="ti-settings"></i>Setting</a></li>
                                        <li><a href="#"><i class="fa fa-power-off"></i>Logout</a></li>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
            <!-- End header header -->
            <!-- Left Sidebar  -->
            <div class="left-sidebar">
                <!-- Sidebar scroll-->
                <div class="scroll-sidebar">
                    <!-- Sidebar navigation-->
                    <nav class="sidebar-nav">
                        <ul id="sidebarnav">
                            <li class="nav-devider"></li>
                            <li class="nav-label">Home</li>
                            <li><a class="has-arrow  " href="#" aria-expanded="false"><i class="fa fa-tachometer"></i><span class="hide-menu">Dashboard <span class="label label-rouded label-primary pull-right">2</span></span></a>
                                <ul aria-expanded="false" class="collapse">
                                    <li><a href="index.html">Ecommerce </a></li>
                                    <li><a href="index1.html">Analytics </a></li>
                                    <li onclick="GetNav(this)" id="index-iframe.aspx"><a href="#" id="indexiframe" >Dashboard Home</a></li>
                                    <li onclick="GetNav(this)"><a href="#" id="Navtest"  >Add Form</a></li>
                                </ul>
                            </li>
                            <li class="nav-label">Apps</li>
                            <li><a class="has-arrow  " href="#" aria-expanded="false"><i class="fa fa-envelope"></i><span class="hide-menu">Email</span></a>
                                <ul aria-expanded="false" class="collapse">
                                    <li><a href="email-compose.html">Compose</a></li>
                                    <li><a href="email-read.html">Read</a></li>
                                    <li><a href="email-inbox.html">Inbox</a></li>
                                </ul>
                            </li>
                            <li><a class="has-arrow  " href="#" aria-expanded="false"><i class="fa fa-bar-chart"></i><span class="hide-menu">Charts</span></a>
                                <ul aria-expanded="false" class="collapse">
                                    <li><a href="chart-flot.html">Flot</a></li>
                                    <li><a href="chart-morris.html">Morris</a></li>
                                    <li><a href="chart-chartjs.html">ChartJs</a></li>
                                    <li><a href="chart-chartist.html">Chartist </a></li>
                                    <li><a href="chart-amchart.html">AmChart</a></li>
                                    <li><a href="chart-echart.html">EChart</a></li>
                                    <li><a href="chart-sparkline.html">Sparkline</a></li>
                                    <li><a href="chart-peity.html">Peity</a></li>
                                </ul>
                            </li>
                            <li class="nav-label">Features</li>
                            <li><a class="has-arrow  " href="#" aria-expanded="false"><i class="fa fa-suitcase"></i><span class="hide-menu">Bootstrap UI <span class="label label-rouded label-warning pull-right">6</span></span></a>
                                <ul aria-expanded="false" class="collapse">
                                    <li><a href="ui-alert.html">Alert</a></li>
                                    <li><a href="ui-button.html">Button</a></li>
                                    <li><a href="ui-dropdown.html">Dropdown</a></li>
                                    <li><a href="ui-progressbar.html">Progressbar</a></li>
                                    <li><a href="ui-tab.html">Tab</a></li>
                                    <li><a href="ui-typography.html">Typography</a></li>
                                </ul>
                            </li>
                            <li><a class="has-arrow  " href="#" aria-expanded="false"><i class="fa fa-suitcase"></i><span class="hide-menu">Components <span class="label label-rouded label-danger pull-right">6</span></span></a>
                                <ul aria-expanded="false" class="collapse">
                                    <li><a href="uc-calender.html">Calender</a></li>
                                    <li><a href="uc-datamap.html">Datamap</a></li>
                                    <li><a href="uc-nestedable.html">Nestedable</a></li>
                                    <li><a href="uc-sweetalert.html">Sweetalert</a></li>
                                    <li><a href="uc-toastr.html">Toastr</a></li>
                                    <li><a href="uc-weather.html">Weather</a></li>
                                </ul>
                            </li>
                            <li><a class="has-arrow  " href="#" aria-expanded="false"><i class="fa fa-wpforms"></i><span class="hide-menu">Forms</span></a>
                                <ul aria-expanded="false" class="collapse">
                                    <li><a href="form-basic.html">Basic Forms</a></li>
                                    <li><a href="form-layout.html">Form Layout</a></li>
                                    <li><a href="form-validation.html">Form Validation</a></li>
                                    <li><a href="form-editor.html">Editor</a></li>
                                    <li><a href="form-dropzone.html">Dropzone</a></li>
                                </ul>
                            </li>
                            <li><a class="has-arrow  " href="#" aria-expanded="false"><i class="fa fa-table"></i><span class="hide-menu">Tables</span></a>
                                <ul aria-expanded="false" class="collapse">
                                    <li><a href="table-bootstrap.html">Basic Tables</a></li>
                                    <li><a href="table-datatable.html">Data Tables</a></li>
                                </ul>
                            </li>
                            <li class="nav-label">Layout</li>
                            <li><a class="has-arrow  " href="#" aria-expanded="false"><i class="fa fa-columns"></i><span class="hide-menu">Layout</span></a>
                                <ul aria-expanded="false" class="collapse">
                                    <li><a href="layout-blank.html">Blank</a></li>
                                    <li><a href="layout-boxed.html">Boxed</a></li>
                                    <li><a href="layout-fix-header.html">Fix Header</a></li>
                                    <li><a href="layout-fix-sidebar.html">Fix Sidebar</a></li>
                                </ul>
                            </li>
                            <li class="nav-label">EXTRA</li>
                            <li><a class="has-arrow  " href="#" aria-expanded="false"><i class="fa fa-book"></i><span class="hide-menu">Pages <span class="label label-rouded label-success pull-right">8</span></span></a>
                                <ul aria-expanded="false" class="collapse">

                                    <li><a href="#" class="has-arrow">Authentication <span class="label label-rounded label-success">6</span></a>
                                        <ul aria-expanded="false" class="collapse">
                                            <li><a href="page-login.html">Login</a></li>
                                            <li><a href="page-register.html">Register</a></li>
                                            <li><a href="page-invoice.html">Invoice</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#" class="has-arrow">Error Pages</a>
                                        <ul aria-expanded="false" class="collapse">
                                            <li><a href="page-error-400.html">400</a></li>
                                            <li><a href="page-error-403.html">403</a></li>
                                            <li><a href="page-error-404.html">404</a></li>
                                            <li><a href="page-error-500.html">500</a></li>
                                            <li><a href="page-error-503.html">503</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li><a class="has-arrow  " href="#" aria-expanded="false"><i class="fa fa-map-marker"></i><span class="hide-menu">Maps</span></a>
                                <ul aria-expanded="false" class="collapse">
                                    <li><a href="map-google.html">Google</a></li>
                                    <li><a href="map-vector.html">Vector</a></li>
                                </ul>
                            </li>
                            <li><a class="has-arrow  " href="#" aria-expanded="false"><i class="fa fa-level-down"></i><span class="hide-menu">Multi level dd</span></a>
                                <ul aria-expanded="false" class="collapse">
                                    <li><a href="#">item 1.1</a></li>
                                    <li><a href="#">item 1.2</a></li>
                                    <li><a class="has-arrow" href="#" aria-expanded="false">Menu 1.3</a>
                                        <ul aria-expanded="false" class="collapse">
                                            <li><a href="#">item 1.3.1</a></li>
                                            <li><a href="#">item 1.3.2</a></li>
                                            <li><a href="#">item 1.3.3</a></li>
                                            <li><a href="#">item 1.3.4</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#">item 1.4</a></li>
                                </ul>
                            </li>
                        </ul>
                    </nav>
                    <!-- End Sidebar navigation -->
                </div>
                <!-- End Sidebar scroll-->
            </div>
            <!-- End Left Sidebar  -->
            <!-- Page wrapper height="800px"  -->
            <div class="page-wrapper">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>

<iframe runat="server" class="iframe" id="maincontentframe" scrolling="yes" frameborder="0" width="100%" style="min-height: 750px;" src="index-iframe.aspx"></iframe>              
         </ContentTemplate>
                </asp:UpdatePanel>
                       </div>
            <!-- End Page wrapper  -->
             <!-- footer -->
                    <footer class="footer">© 2018 All rights reserved. Template designed by <a href="https://mymail.com">Pasture</a></footer>
              <!-- End footer -->
        </div>

        <!-- End Wrapper -->
        <!-- All Jquery -->
        <script src="../assets/js/lib/jquery/jquery.min.js"></script>
        <!-- Bootstrap tether Core JavaScript -->
        <script src="../assets/js/lib/bootstrap/js/popper.min.js"></script>
        <script src="../assets/js/lib/bootstrap/js/bootstrap.min.js"></script>
        <!-- slimscrollbar scrollbar JavaScript -->
        <script src="../assets/js/jquery.slimscroll.js"></script>
        <!--Menu sidebar -->
        <script src="../assets/js/sidebarmenu.js"></script>
        <!--stickey kit -->
        <script src="../assets/js/lib/sticky-kit-master/dist/sticky-kit.min.js"></script>
        <!--Custom JavaScript -->


        <script src="../assets/js/lib/sweetalert/sweetalert.min.js"></script>
        <!-- scripit init-->
        <script src="../assets/js/lib/sweetalert/sweetalert.init.js"></script>
        <!-- Amchart -->
        <script src="../assets/js/lib/morris-chart/raphael-min.js"></script>
        <script src="../assets/js/lib/morris-chart/morris.js"></script>
        <script src="../assets/js/lib/morris-chart/dashboard1-init.js"></script>


        <script src="../assets/js/lib/calendar-2/moment.latest.min.js"></script>
        <!-- scripit init-->
        <script src="../assets/js/lib/calendar-2/semantic.ui.min.js"></script>
        <!-- scripit init-->
        <script src="../assets/js/lib/calendar-2/prism.min.js"></script>
        <!-- scripit init-->
        <script src="../assets/js/lib/calendar-2/pignose.calendar.min.js"></script>
        <!-- scripit init-->
        <script src="../assets/js/lib/calendar-2/pignose.init.js"></script>

        <script src="../assets/js/lib/owl-carousel/owl.carousel.min.js"></script>
        <script src="../assets/js/lib/owl-carousel/owl.carousel-init.js"></script>
        <script src="../assets/js/scripts.js"></script>
        <!-- scripit init-->

        <script src="../assets/js/lib/toastr/toastr.min.js"></script>
        <!-- scripit init-->
        <script src="../assets/js/lib/toastr/toastr.init.js"></script>

        <%--<script src="../assets/js/custom.min.js"></script>--%>
    </form>
</body>
</html>
