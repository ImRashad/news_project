
<?php  

error_reporting(0);

session_start();
ob_start();

if (!isset($_SESSION['admin_kadi'])) {

    header('Location:login.php ');
}



?>



<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
 
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Responsive Bootstrap Advance Admin Template</title>

    <!-- BOOTSTRAP STYLES-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />

     <link href="assets/css/bootstrap-fileupload.min.css" rel="stylesheet" />


    <!-- FONTAWESOME STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
       <!--CUSTOM BASIC STYLES-->
    <link href="assets/css/basic.css" rel="stylesheet" />
    <!--CUSTOM MAIN STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />
    <!-- GOOGLE FONTS-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
</head>
<body>
    <div id="wrapper">
        <nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">ADMIN PANEL</a>
            </div>

            <div class="header-right">

                <a href="message-task.html" class="btn btn-info" title="New Message"><b> </b><i class="fa fa-envelope-o "></i></a>
                <a href="message-task.html" class="btn btn-primary" title="New Task"><b> </b><i class="fa fa-bars "></i></a>
                <a href="exit.php" class="btn btn-danger" title="Logout"><i class="fa fa-exclamation-circle "> Çıxış</i></a>

            </div>
        </nav>