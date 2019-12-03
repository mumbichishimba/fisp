<!--  wrapper -->
    <div id="wrapper">
        <!-- navbar top -->
        <nav class="navbar navbar-default navbar-fixed-top" role="navigation" id="navbar">
            <!-- navbar-header -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="${contextPath}/home">
                    <h2><b><font color="white"> FISP </font></b></h2>
                </a>
            </div>
            <!-- end navbar-header -->
            <!-- navbar-top-links -->
            <ul class="nav navbar-top-links navbar-right">
                <!-- main dropdown -->
               
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-2x"></i>
                    </a>
                    <!-- dropdown user-->
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="#"><i class="fa fa-gear fa-fw"></i>${user.firstname} ${user.lastname}</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="${contextPath}/logout"><i class="fa fa-sign-out fa-fw"></i>Logout</a>
                        </li>
                    </ul>
                    <!-- end dropdown-user -->
                </li>
                <!-- end main dropdown -->
            </ul>
            <!-- end navbar-top-links -->

        </nav>
        <!-- end navbar top -->

        <!-- navbar side -->
        <nav class="navbar-default navbar-static-side" role="navigation">
            <!-- sidebar-collapse -->
            <div class="sidebar-collapse">
                <!-- side-menu -->
                <ul class="nav" id="side-menu">
                    <li>
                        <!-- user image section-->
                        <div class="user-section">

                        </div>
                        <!--end user image section-->
                    </li>

                    <li class="">
                        <a href="${contextPath}/home"><i class="fa fa-dashboard fa-fw"></i>Dashboard</a>
                    </li>
                    
                     <li>
                        <a href="${contextPath}/cooperatives"><i class="fa fa-flask fa-fw"></i>Co-operatives</a>
                    </li>
                    <li>
                        <a href="${contextPath}/inventory"><i class="fa fa-table fa-fw"></i>Implements</a>
                    </li>
                    <li>
                        <a href="${contextPath}/users"><i class="fa fa-edit fa-fw"></i>Farmers</a>
                    </li>
                    
                </ul>
                <!-- end side-menu -->
            </div>
            <!-- end sidebar-collapse -->
        </nav>
        <!-- end navbar side -->
         <div id="page-wrapper">