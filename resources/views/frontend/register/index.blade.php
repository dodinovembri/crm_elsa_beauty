@extends('layouts.frontend')

@section('content')


@include('frontend.templates.header')

    <div class="site-section bg-light" id="contact-section">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-md-7 mb-5"><br><br>

            <form action="{{ url('frontend/register/store') }}" method="POST" class="p-5 bg-white">
              @csrf
              <h2 class="h4 text-black mb-5">Register Form</h2> 

              <div class="row form-group">
                
                <div class="col-md-12">
                  <label class="text-black" for="email">Email Address</label> 
                  <input type="email" id="email" name="email" class="form-control rounded-0" required="">
                </div>
              </div>

              <div class="row form-group">
                
                <div class="col-md-12">
                  <label class="text-black" for="email">Name</label> 
                  <input type="text" id="email" name="name" class="form-control rounded-0" required="">
                </div>
              </div>

              <div class="row form-group">
                
                <div class="col-md-12">
                  <label class="text-black" for="subject">Password</label> 
                  <input type="password" name="password" id="subject" class="form-control rounded-0" required="">
                </div>
              </div>


              <div class="row form-group">
                
                <div class="col-md-12">
                  <label class="text-black" for="subject">Confirm Password</label> 
                  <input type="password" name="password_confirm" id="subject" class="form-control rounded-0" required="">
                </div>
              </div>              

              <div class="row form-group">
                <div class="col-md-12">
                  <input type="submit" value="Register" class="btn btn-black rounded-0 py-3 px-4">
                </div>
              </div>

  
            </form>
          </div>
        
        </div>
        
      </div>
    </div>




@include('frontend.templates.footer')

@endsection