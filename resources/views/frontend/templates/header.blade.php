    <div class="site-mobile-menu site-navbar-target">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close mt-3">
          <span class="icon-close2 js-menu-toggle"></span>
        </div>
      </div>
      <div class="site-mobile-menu-body"></div>
    </div>
   
    <div class="top-bar py-3 bg-light" id="home-section">
      <div class="container">
        <div class="row align-items-center">
         
          <div class="col-6 text-left">
            <ul class="social-media">
              <li><a href="#" class=""><span class="icon-facebook"></span></a></li>
              <li><a href="#" class=""><span class="icon-twitter"></span></a></li>
              <li><a href="https://www.instagram.com/elsha_beauty_house" class="" target="_blank"><span class="icon-instagram"></span></a></li>
              <li><a href="#" class=""><span class="icon-linkedin"></span></a></li>
            </ul>
          </div>
          <div class="col-6">
            <p class="mb-0 float-right">
              <span class="mr-3"><a href="tel://+62-815-4006-3543"> <span class="icon-phone mr-2" style="position: relative; top: 2px;"></span><span class="d-none d-lg-inline-block text-black">+62-815-4006-3543</span></a></span>
            </p>
            
          </div>
        </div>
      </div> 
    </div>
  <?php       
    $user_id = isset(auth()->user()->id) ? auth()->user()->id : '';  
    $count_cart = App\Models\CartDetailModel::where('status', 1)->where('user_id', $user_id)->count(); 
  ?>
    <header class="site-navbar py-4 bg-white js-sticky-header site-navbar-target" role="banner">

      <div class="container">
        <div class="row align-items-center">
          
          <div class="col-6 col-xl-2">
          </div>
          <div class="col-12 col-md-10 d-none d-xl-block">
            <nav class="site-navigation position-relative text-right" role="navigation">

              <ul class="site-menu main-menu js-clone-nav mr-auto d-none d-lg-block">
                <li><a href="{{url('/')}}#home-section" class="nav-link">Home</a></li>
                <li><a href="#services-section" class="nav-link">Services</a></li>
                <li><a href="#products-section" class="nav-link">Products</a></li>
                <li><a href="{{ url('frontend/consultation/index') }}" class="nav-link">Consultation</a></li>
                <li><a href="#about-section" class="nav-link">About Us</a></li>
                <li><a href="#fanspage-section" class="nav-link">Instagram</a></li>
                <li><a href="{{ url('frontend/cart/index') }}" class="nav-link">Cart <sup><span style="color: red">{{ $count_cart }}</span></sup></a></li>
                <?php if (isset(auth()->user()->id)){ ?>
                <li><form method="POST" action="{{ route('logout') }}">@csrf <button type="submit" class="btn">Logout</button></form></li>
                <?php }else{ ?>
                <li><a href="{{ url('admin') }}">Login</a></li>
                <?php } ?>
              </ul>
            </nav>
          </div>


          <div class="col-6 d-inline-block d-xl-none ml-md-0 py-3" style="position: relative; top: 3px;"><a href="#" class="site-menu-toggle js-menu-toggle text-black float-right"><span class="icon-menu h3"></span></a></div>

        </div>
      </div>
      
    </header>
