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
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">
                            @include('templates.backend.flashmessage')
                            <?php if (isset($create)) { ?>
                                <a href="{{ url($create) }}"><button type="button" class="btn btn-primary">{{ $text_add }}</button></a><br><br>
                            <?php } ?>
                            <table id="datatable" class="table table-bordered dt-responsive" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                                <thead>
                                    <tr>
                                        <th>Subject</th>
                                        <th>Date Consultation</th>
                                        <th>User/ Patient</th>
                                        <th>Consultant</th>
                                        <th>Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php foreach ($table_data as $key => $value) { ?>
                                        <tr>
                                            <td><b><a href="{{ url('admin/consultation/create', $value->id) }}">{{ $value->subject }}</a></b></td>
                                            <td>{{ $value->date_consultation }}</td>
                                            <td>{{ $value->user->name }}</td>
                                            <td>{{ $value->consultant_id  }}</td>
                                        </tr> 
                                        @include('templates.backend.deleteconfirm')                                       
                                    <?php } ?>                                   
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div> <!-- end col -->
            </div> <!-- end row -->

        </div><!-- container -->

        @include('templates.backend.footer')
    </div>
    <!-- end page content -->
</div>
<!-- end page-wrapper -->

@endsection