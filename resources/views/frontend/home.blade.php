@extends('layouts.frontend')

@section('content')

  <div class="site-wrap">  

    @include('frontend.templates.header')
     
    <div class="site-blocks-cover overlay" style="background-image: url( {{ asset(Storage::url('img/product_home')) }}/{{ $product_home->product_home_image }});" data-aos="fade" data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row align-items-center justify-content-center">

          <div class="col-md-12" data-aos="fade-up" data-aos-delay="400">
                        
            <div class="row mb-4">
              <div class="col-md-12">
                <h1>{{ $product_home->product_home_title }}</h1>
                <p class="mb-5 lead">{{ $product_home->product_home_sub_title }}</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>  

    <div class="site-section bg-light" id="services-section">
      <div class="container">
        <div class="row mb-5">
          <div class="col-12 text-center">
            <h2 class="section-title mb-3">Our Services</h2>
            <h3 class="section-sub-title">JADILAH CANTIK & SEHAT BERSAMA KAMI KARENA <br> KECANTIKAN ANDA IMPIAN KAMI</h3>
          </div>
        </div>
          <div class="row align-items-stretch">
          <?php foreach ($service as $key => $value) { ?>
              <div class="col-md-6 col-lg-4 mb-4 mb-lg-4" data-aos="fade-up">
                <div class="unit-4 d-flex">
                  <div class="unit-4-icon mr-4"><span class="text-primary {{ $value->service_icon }}"></span></div>
                  <div>
                    <p>{{ $value->service_name }}</p>
                  </div>
                </div>
              </div>
          <?php } ?>
          </div>          
      </div>
    </div>
    
    <div class="site-section" id="products-section">
      <div class="container">
        <div class="row mb-5 justify-content-center">
          <div class="col-md-6 text-center">
            <h2 class="section-title mb-3">Our Products</h2>
            <h3 class="section-sub-title">SOLUSI UNTUK KECANTIKAN ANDA</h3>
          </div>
        </div>
        <div class="row">
          <?php foreach ($product as $key => $value) { ?>
          <div class="col-lg-2 col-md-6 mb-5">
            <div class="product-item">
              <figure>
                <img src="{{ asset(Storage::url('img/product')) }}/{{ $value->product_image }}" alt="Image" class="img-fluid" width="100%">
              </figure>
              <div class="px-4">
                <h3><a href="#">{{ $value->product_name  }}</a></h3>
                <div class="mb-3">
                  <span class="meta-icons wishlist"><a href="#" class="mr-2"></a> Rp. {{  number_format($value->price, 0, ',', '.') }}</span>
                </div>
                <div>
                  <a href="{{ url('frontend/cart/create', $value->id) }}" class="btn btn-black mr-1 rounded-0">Add to Cart</a><br><br>
                  <a href="{{ url('frontend/product/show', $value->id) }}" class="btn btn-black btn-outline-black ml-1 rounded-0">View</a>
                </div>
              </div>
            </div>
          </div>
          <?php } ?>
        </div>
      </div>
    </div>

    <div class="site-section" id="about-section">
      <div class="container">
        <div class="row align-items-lg-center">
          <div class="col-md-6 mb-5 mb-lg-0 position-relative">
            <img src="{{ asset(Storage::url('img/about_us')) }}/{{ $about_us->about_us_image }}" class="img-fluid" alt="Image">
          </div>
          <div class="col-md-6 ml-auto">
            <h2 class="section-title mb-3">About Us</h2>
            <p class="mb-4">{{ $about_us->about_us_description }}</p>
          </div>
        </div>
      </div>
    </div>

    <div class="site-section bg-light" id="fanspage-section">
    <div class="site-blocks-cover inner-page-cover overlay get-notification"  style="background-image: url({{ asset('img/instagram.jpg') }}); background-attachment: fixed;" data-aos="fade">
      <div class="container">

        <div class="row align-items-center justify-content-center">
          <form class="col-md-7" method="post">
            <h2>Our Instagram.</h2>
            <p>Visit our instagram at <a href="https://www.instagram.com/elsha_beauty_house/?hl=en" target="_blank"><span style="color: black;">Elsha Beauty House</span></a></p>
          </form>
        </div>

      </div>
    </div>
    </div>    

  @include('frontend.templates.footer')

@endsection