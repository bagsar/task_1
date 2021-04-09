<!DOCTYPE html>
<html lang="en">
<head>
 @include('root.head')
</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">

  <!-- Preloader -->
  <div class="preloader flex-column justify-content-center align-items-center">
    <img class="animation__shake" src="images/logo.png" alt="AdminLTELogo" height="60" width="60">
  </div>

  <!-- Navbar -->
      @include('root.top')
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
      @include('root.leftsecond')
      @include('root.leftfirst')
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
        @yield('content')
  </div>
  <!-- /.content-wrapper -->
    @include('root.footer')

  <!-- Control Sidebar -->
    @include('root.right')  
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->
 @include('root.bottomjs')

</body>
</html>
