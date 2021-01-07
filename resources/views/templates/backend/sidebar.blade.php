        <!-- Left Sidenav -->
        <div class="left-sidenav">
            <!-- LOGO -->
            <div class="brand">
                <a href="{{ url('admin') }}" class="logo">
                    <span>
                        <b>ELSHA CLINIC</b>
                    </span>

                </a>
            </div>
            <!--end logo-->
            <div class="menu-content h-100" data-simplebar>
                <ul class="metismenu left-sidenav-menu">
                    <li class="menu-label mt-0">Main</li>
                    <li>
                        <a href="{{ url('dashboard') }}"> <i data-feather="home" class="align-self-center menu-icon"></i><span>Dashboard</span><span class="menu-arrow"></span></a>
                    </li>
    
                    <li>
                        <a href="javascript: void(0);"><i data-feather="shopping-cart" class="align-self-center menu-icon"></i><span>Transactions</span><span class="menu-arrow"><i class="mdi mdi-chevron-right"></i></span></a>
                        <ul class="nav-second-level" aria-expanded="false">
                            <li class="nav-item"><a class="nav-link" href="{{ url('admin/order/index') }}"><i class="ti-control-record"></i>Orders</a></li>
                            <li class="nav-item"><a class="nav-link" href="{{ url('admin/voucher/index') }}"><i class="ti-control-record"></i>Vouchers</a></li>
                            <li class="nav-item"><a class="nav-link" href="{{ url('admin/consultation/index') }}"><i class="ti-control-record"></i>Consultation</a></li>
                        </ul>
                    </li>   

                    <li>
                        <a href="javascript: void(0);"><i data-feather="book" class="align-self-center menu-icon"></i><span>Master</span><span class="menu-arrow"><i class="mdi mdi-chevron-right"></i></span></a>
                        <ul class="nav-second-level" aria-expanded="false">
                            <li class="nav-item"><a class="nav-link" href="{{ url('admin/user/index') }}"><i class="ti-control-record"></i>User Account</a></li>
                            <li class="nav-item"><a class="nav-link" href="{{ url('admin/payment_method/index') }}"><i class="ti-control-record"></i>Payment Method</a></li>
                        </ul>
                    </li> 

                    <li>
                        <a href="javascript: void(0);"><i data-feather="layers" class="align-self-center menu-icon"></i><span>Product</span><span class="menu-arrow"><i class="mdi mdi-chevron-right"></i></span></a>
                        <ul class="nav-second-level" aria-expanded="false">
                            <li class="nav-item"><a class="nav-link" href="{{ url('admin/product/index') }}"><i class="ti-control-record"></i>Product</a></li>
                            <li class="nav-item"><a class="nav-link" href="{{ url('admin/product_category/index') }}"><i class="ti-control-record"></i>Product Category</a></li>
                            <li class="nav-item"><a class="nav-link" href="{{ url('admin/product_home/index') }}"><i class="ti-control-record"></i>Product Home</a></li>                           
                            <li class="nav-item"><a class="nav-link" href="{{ url('admin/product_stock/index') }}"><i class="ti-control-record"></i>Product Stock</a></li>                            
                        </ul>
                    </li> 

                    <li>
                        <a href="javascript: void(0);"><i data-feather="file-plus" class="align-self-center menu-icon"></i><span>Frontend</span><span class="menu-arrow"><i class="mdi mdi-chevron-right"></i></span></a>
                        <ul class="nav-second-level" aria-expanded="false">
                            <li class="nav-item"><a class="nav-link" href="{{ url('admin/service/index') }}"><i class="ti-control-record"></i>Services</a></li>
                            <li class="nav-item"><a class="nav-link" href="{{ url('admin/about_us/index') }}"><i class="ti-control-record"></i>About Us</a></li>
                        </ul>
                    </li>            
                </ul>
            </div>
        </div>
        <!-- end left-sidenav-->
        
