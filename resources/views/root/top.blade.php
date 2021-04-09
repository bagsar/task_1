  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" onclick="$( '#second' ).hide();$( '#left' ).show();" role="button"><i class="fas fa-bars"></i></a>
      </li>
      <li class="nav-item d-lnone1">
        <a class="nav-link" data-widget="pushmenu" href="#"  onclick="$( '#left' ).hide();$( '#second' ).show();" role="button"><i class="fas fa-align-left"></i></a>

      </li>




    </ul>   

    <ul class="navbar-nav  d-none d-sm-inline-block">
@include('root.topmenu')
    </ul>
    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">

      <li class="nav-item">
        <a class="nav-link" data-widget="fullscreen" href="#" role="button">
          <i class="fas fa-expand-arrows-alt"></i>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" data-widget="control-sidebar" data-slide="true" href="#" role="button">
          <i class="fas fa-th-large"></i>
        </a>
      </li>
    </ul>
      </nav>