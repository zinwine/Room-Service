<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="Dashboard">
  <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
  <title>Dashio - Bootstrap Admin Template</title>

  @include('Admin.includes.header_links')

  @yield('MyStyle')

  <!-- <script src="lib/chart-master/Chart.js"></script> -->

</head>

<body>
  <section id="container">
    <!-- **********************************************************************************************************************************************************
        TOP BAR CONTENT & NOTIFICATIONS
        *********************************************************************************************************************************************************** -->
    <!--header start-->
      @include('Admin.includes.header')
    <!--header end-->
    <!-- **********************************************************************************************************************************************************
        MAIN SIDEBAR MENU
        *********************************************************************************************************************************************************** -->
    <!--sidebar start-->
      @include('Admin.includes.sidebar')
    <!--sidebar end-->
    <!-- **************************************  MAIN CONTENT  ***************************** -->
    <!--main content start-->
      @yield('Content')
    <!--main content end-->
    <!--footer start-->
      @include('Admin.includes.footer')
    <!--footer end-->
  </section>
  <!-- js placed at the end of the document so the pages load faster -->
      @include('Admin.includes.footer_links')

      @yeild('MyJs')
</body>
</html>
