@extends('layouts.frontend')

@section('content')

@include('frontend.templates.header')
    <br><br>
    <div class="site-section bg-light" id="contact-section">
      <div class="container">
        <div class="row mb-5">
          <div class="col-12 text-center">
            <h3 class="section-sub-title">Create Consultation</h3>
          </div>
        </div>
        <div class="row justify-content-center">
          <div class="col-md-12 mb-5">

            <form action="{{ url('frontend/consultation/store') }}" method="POST" class="p-5 bg-white">
              @csrf
              <h2 class="h4 text-black mb-5">Consultation Form</h2> 

              <div class="row form-group">
                
                <div class="col-md-12">
                  <label class="text-black" for="subject">Subject</label> 
                  <input type="subject" name="subject" id="subject" class="form-control rounded-0">
                </div>
              </div>

              <div class="row form-group">
                <div class="col-md-12">
                  <label class="text-black" for="message">Message</label> 
                  <textarea name="consultation" id="message" cols="30" rows="7" class="form-control rounded-0" placeholder="Write your notes or questions here..."></textarea>
                </div>
              </div>

              <div class="row form-group">
                <div class="col-md-12">
                  <input type="submit" value="Send Message" class="btn btn-black rounded-0 py-3 px-4">
                </div>
              </div>

  
            </form>

          </div>
        
        </div>
        
      </div>
    </div>

@include('frontend.templates.footer')

@endsection