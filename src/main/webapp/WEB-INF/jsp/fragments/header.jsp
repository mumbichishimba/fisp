<section id="container">
    <!-- **********************************************************************************************************************************************************
        TOP BAR CONTENT & NOTIFICATIONS
        *********************************************************************************************************************************************************** -->
    <!--header start-->
    <header class="header black-bg">
      <div class="sidebar-toggle-box">
        <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
      </div>
      <!--logo start-->
      <a href="index.html" class="logo"><b>FI<span>SP</span></b></a>
      <!--logo end-->
      <div class="nav notify-row" id="top_menu">
        <!--  notification start -->
        <ul class="nav top-menu">
          <!-- settings start -->
          
        </ul>
        <!--  notification end -->
      </div>
      <div class="top-menu">
        <ul class="nav pull-right top-menu">
          <li><a class="logout" href="${contextPath}/logout">Logout</a></li>
        </ul>
      </div>
    </header>
      <aside>
      <div id="sidebar" class="nav-collapse ">
        <!-- sidebar menu start-->
        <ul class="sidebar-menu" id="nav-accordion">
          <p class="centered"><a href="profile.html"><img src="img/ui-sam.jpg" class="img-circle" width="80"></a></p>
          <h5 class="centered">${user.firstname} ${user.lastname}</h5>
          <li class="mt">
            <a class="active" href="${contextPath}/home">
              <i class="fa fa-dashboard"></i>
              <span>Dashboard</span>
              </a>
          </li>
          <li>
            <a href="${contextPath}/cooperatives">
              <i class="fa fa-gear"></i>
              <span>Co-operatives </span>
              
              </a>
          </li>
          <li>
            <a href="${contextPath}/inventory">
              <i class="fa fa-gear"></i>
              <span> Implements </span>
              
              </a>
          </li>
          <li>
            <a href="${contextPath}/users">
              <i class="fa fa-user"></i>
              <span>Users </span>
              
              </a>
          </li>

           
        </ul>
        <!-- sidebar menu end-->
      </div>
    </aside>
       <section id="main-content">
      <section class="wrapper site-min-height">