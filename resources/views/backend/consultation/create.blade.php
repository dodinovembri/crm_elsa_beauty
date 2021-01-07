@extends('layouts.backend')

@section('content')        

@include('templates.backend.sidebar')

<div class="page-wrapper">
    @include('templates.backend.header')

    <!-- Page Content-->
    <div class="page-content">
        <div class="container-fluid">
            <!-- Page-Title -->
            @include('templates.backend.breadcrumb')
            <!-- end page title end breadcrumb -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <?php foreach ($consultation as $key => $value) { 
                              if ($value->consultation_type_id == 0) {
                                 $position = "left";
                                 $name = $value->user->name;
                               }else{
                                $position = "right";
                                $name = $value->consultant->name;
                               } ?>
                              <div class="row form-group" style="text-align: {{$position}}">
                              
                              <div class="col-md-12">
                                <label class="text-black" for="subject">{{ $name }}</label> 
                                <p>{{ $value->consultation }}</p>
                              </div>
                            </div>
                            <?php } ?>
                        </div><!--end card-body-->
                    </div><!--end card-->
                </div><!--end col-->
            </div> <!-- end row -->
        <form method="POST" action="{{ url('admin/consultation/store') }}" enctype="multipart/form-data">
          @csrf
          <input type="hidden" name="consultation_id" value="{{ $consultation_id }}">
          <div class="form-group row editor-label">
              <label class="col-xl-1 col-md-1"><span>*</span>Reply</label>
              <textarea class="form-control col-xl-11 col-md-11" rows="5" name="reply" ></textarea>
          </div> 
          <div class="form-group row editor-label">
              <label class="col-xl-1 col-md-1"><span>*</span></label>
              <button type="submit" class="btn btn-primary">Send</button>
          </div>                                                                       
        </form>
        </div><!-- container -->


        @include('templates.backend.footer')
    </div>
    <!-- end page content -->
</div>
<!-- end page-wrapper -->

@endsection