<aside class="left-sidebar">
    <!-- Sidebar scroll-->
    <div class="scroll-sidebar">
        <!-- User profile -->
        <!-- <div class="user-profile" style="background: url(<?= base_url(); ?>assets/material-pro/images/background/user-info.jpg) no-repeat;"> -->
            <!-- User profile image
            <div class="profile-img">
                
            </div>
            -->
        <!-- </div> -->
        <!-- End User profile text-->
        <!-- Sidebar navigation-->
        <nav class="sidebar-nav">
            <ul id="sidebarnav">
                <li class="nav-small-cap">PERSONAL</li>
                <li> <a class="has-arrow waves-effect waves-dark" href="#" aria-expanded="false"><i class="mdi mdi-gauge"></i><span class="hide-menu">Dashboard </span></a>
                    <ul aria-expanded="false" class="collapse">
                        <li><a href="<?= site_url('dashboard') ?>">Dashboard </a></li>
                    </ul>
                </li>
                <li> <a class="has-arrow waves-effect waves-dark" href="#" aria-expanded="false"><i class="fa fa-map-marker"></i><span class="hide-menu">Zona</span></a>
                    <ul aria-expanded="false" class="collapse">
                        <li><a href="<?= site_url('zona'); ?>">list</a></li>
                    </ul>
                </li>
                <li> <a class="has-arrow waves-effect waves-dark" href="#" aria-expanded="false"><i class="fa fa-file"></i><span class="hide-menu">Ketentuan</span></a>
                    <ul aria-expanded="false" class="collapse">
                        <li><a href="<?= site_url('ketentuan'); ?>">list</a></li>
                    </ul>
                </li>
                <li> <a class="has-arrow waves-effect waves-dark" href="#" aria-expanded="false"><i class="fa fa-file-pdf-o"></i><span class="hide-menu">Reporting</span></a>
                    <ul aria-expanded="false" class="collapse">
                        <li><a href="<?= site_url('report'); ?>">list</a></li>
                    </ul>
                </li>
                <li> <a class="has-arrow waves-effect waves-dark" href="#" aria-expanded="false"><i class="fa fa-user"></i><span class="hide-menu">Manage User</span></a>
                    <ul aria-expanded="false" class="collapse">
                        <li><a href="<?= site_url('user'); ?>">User list</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
        <!-- End Sidebar navigation -->
    </div>
    <!-- End Sidebar scroll-->
    <!-- Bottom points-->
    <div class="sidebar-footer">
        <!-- item--><a href="" class="link" data-toggle="tooltip" title="Settings"><i class="ti-settings"></i></a>
        <!-- item--><a href="" class="link" data-toggle="tooltip" title="Email"><i class="mdi mdi-gmail"></i></a>
        <!-- item--><a href="" class="link" data-toggle="tooltip" title="Logout"><i class="mdi mdi-power"></i></a> </div>
    <!-- End Bottom points-->
</aside>