<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="<?= base_url(); ?>assets/material-pro/images/favicon.png">
    <title>Peduli covid-19 || Dashboard</title>
    <!-- Bootstrap Core CSS -->
    <link href="<?= base_url(); ?>assets/material-pro/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!-- chartist CSS -->
    <link href="<?= base_url(); ?>assets/material-pro/plugins/chartist-js/dist/chartist.min.css" rel="stylesheet">
    <link href="<?= base_url(); ?>assets/material-pro/plugins/chartist-js/dist/chartist-init.css" rel="stylesheet">
    <link href="<?= base_url(); ?>assets/material-pro/plugins/chartist-plugin-tooltip-master/dist/chartist-plugin-tooltip.css" rel="stylesheet">
    <!--This page css - Morris CSS -->
    <link href="<?= base_url(); ?>assets/material-pro/plugins/c3-master/c3.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="<?= base_url() ?>assets/css/custom.css" rel="stylesheet">
    <link href="<?= base_url() ?>assets/css/style.css" rel="stylesheet">
    <!-- You can change the theme colors from here -->
    <link href="<?= base_url() ?>assets/css/colors/blue.css" id="theme" rel="stylesheet">
    <link href="<?= base_url() ?>assets/material-pro/plugins/toast-master/css/jquery.toast.css" rel="stylesheet">
    <link href="<?= base_url() ?>assets/material-pro/plugins/sweetalert/sweetalert.css" rel="stylesheet" type="text/css">
    <link href="<?= base_url() ?>assets/material-pro/plugins/bootstrap-material-datetimepicker/css/bootstrap-material-datetimepicker.css" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
    <style>
        .white-color {
            color : white
        }
    </style>
    <script src="<?= base_url(); ?>assets/material-pro/plugins/jquery/jquery.min.js"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="<?= base_url(); ?>assets/material-pro/plugins/bootstrap/js/popper.min.js"></script>
    <script src="<?= base_url(); ?>assets/material-pro/plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="<?= base_url() ?>assets/material-pro/plugins/sweetalert/sweetalert.min.js"></script>
</head>

<body class="fix-header fix-sidebar card-no-border">
    <!-- ============================================================== -->
    <!-- Preloader - style you can find in spinners.css -->
    <!-- ============================================================== -->
    <div class="preloader">
        <svg class="circular" viewBox="25 25 50 50">
            <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="2" stroke-miterlimit="10" /> </svg>
    </div>
    <!-- ============================================================== -->
    <!-- Main wrapper - style you can find in pages.scss -->
    <!-- ============================================================== -->
    <div id="main-wrapper">
        <!-- ============================================================== -->
        <!-- Topbar header - style you can find in pages.scss -->
        <!-- ============================================================== -->
        <header class="topbar">
            <nav class="navbar top-navbar navbar-expand-md navbar-light">
                <!-- ============================================================== -->
                <!-- Logo -->
                <!-- ============================================================== -->
                <div class="navbar-header">
                    <a class="navbar-brand" href="index.html">
                        <!-- Logo icon --><b class="white-color">
                        <!-- <img src="<?= base_url(); ?>assets/images/logos2.png" style="widht:; height:60px;"  class="light-logo" alt="homepage" /><br> -->
                            SARANA JAYA
                            <!--You can put here icon as well // <i class="wi wi-sunset"></i> //-->
                            <!-- Dark Logo icon -->
                            <!-- <img src="<?= base_url(); ?>assets/images/logos.png" alt="homepage" class="dark-logo" /> -->
                            <!-- Light Logo icon -->
                            <!-- <img src="<?= base_url(); ?>assets/images/logos.png" alt="homepage" class="light-logo" /> -->
                        </b>
                        <!--End Logo icon -->
                        <!-- Logo text -->
                         <!-- dark Logo text -->
                         <!-- Light Logo text -->    
                        </a>
                </div>
                <!-- ============================================================== -->
                <!-- End Logo -->
                <!-- ============================================================== -->
                <div class="navbar-collapse">
                    <!-- ============================================================== -->
                    <!-- toggle and nav items -->
                    <!-- ============================================================== -->
                    <ul class="navbar-nav mr-auto mt-md-0">
                    </ul>
                    <!-- ============================================================== -->
                    <!-- User profile and search -->
                    <!-- ============================================================== -->
                    <ul class="navbar-nav my-lg-0">
                        <!-- ============================================================== -->
                        <!-- Comment -->
                       
                        <!-- ============================================================== -->
                        <!-- End Messages -->
                        <!-- ============================================================== -->
                        <!-- ============================================================== -->
                        <!-- Profile -->
                        <!-- ============================================================== -->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle text-muted waves-effect waves-dark" href="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <?= $this->session->userdata('username') ?>    
                            </a>
                            <div class="dropdown-menu dropdown-menu-right scale-up">
                                <ul class="dropdown-user">
                                    <li><a href="<?= site_url('login/logout'); ?>"><i class="fa fa-power-off"></i> Logout</a></li>
                                </ul>
                            </div>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>
        <!-- ============================================================== -->
        <!-- End Topbar header -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <?php $this->load->view('sidebar'); ?>
        <!-- ============================================================== -->
        <!-- End Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Page wrapper  -->
        <!-- ============================================================== -->
        <div class="page-wrapper">
            <!-- ============================================================== -->
            <!-- Container fluid  -->
            <!-- ============================================================== -->
            <div class="container-fluid">
                <!-- ============================================================== -->
                <!-- Bread crumb and right sidebar toggle -->
                <!-- ============================================================== -->
                <div class="row page-titles">
                    <div class="col-md-5 col-8 align-self-center">
                        <h3 class="text-themecolor">Dashboard</h3>
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
                            <li class="breadcrumb-item active"><?= isset($breadcrumb) ? $breadcrumb : ""  ?></li>
                        </ol>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- End Bread crumb and right sidebar toggle -->
                <!-- ============================================================== -->
               
         