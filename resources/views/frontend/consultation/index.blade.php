@extends('layouts.frontend')

@section('content')

@include('frontend.templates.header')
    <br><br>
    <div class="site-section bg-light" id="contact-section">
      <div class="container">
        <div class="row mb-5">
          <div class="col-12 text-center">
            <h3 class="section-sub-title">Consultation List</h3>
          </div>
        </div>
        <div class="row justify-content-center">
          <div class="col-md-12 mb-5">
            <a href="{{ url('frontend/consultation/create') }}"><button> Create New Consultation</button></a><br><br>
            <table class="table" border="1">
                <thead>
                    <tr>
                        <th width="20">No</th>
                        <th>Subject</th>
                        <th>Date</th>
                        <th>Consultant</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $no = 0; foreach ($consultation as $key => $value) { $no++; ?>
                        <tr>
                            <td>{{ $no }}</td>
                            <td><a href="{{ url('frontend/consultation/show', $value->id) }}">{{ $value->subject }}</a></td>
                            <td>{{ $value->date_consultation }}</td>
                            <td>{{ $value->consultant_id }}</td>
                        </tr>                        
                    <?php } ?>
                </tbody>
            </table>

          </div>
        
        </div>
        
      </div>
    </div>

@include('frontend.templates.footer')

@endsection