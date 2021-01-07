<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\ConsultationModel;
use App\Models\ConsultationDetailModel;

use App\Models\LanguangeModel;
use App\Models\CurrencyModel;
use App\Models\SocialMediaModel;
use App\Models\ProductCategoryModel;
use App\Models\ShopInformationModel;

class ConsultationController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function __construct()
    {
        $this->middleware('auth');        
    }

    public function index()
    {
        $data['consultation'] = ConsultationModel::where('status', 1)->where('user_id', auth()->user()->id)->get();
        return view('frontend/consultation/index', $data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('frontend/consultation/create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $insert = new ConsultationModel();
        $insert->subject = $request->subject;
        $insert->consultation = $request->consultation;
        $insert->date_consultation = date("Y-m-d");
        $insert->consultation_type_id = 0;
        $insert->user_id = auth()->user()->id;
        $insert->created_by =  auth()->user()->id;
        $insert->created_at =  date("Y-m-d H:i:s");
        $insert->save();

        $insert_detail = new ConsultationDetailModel();
        $insert_detail->consultation_id = $insert->id;
        $insert_detail->user_id = auth()->user()->id;
        $insert_detail->consultation = $request->consultation;
        $insert_detail->date_consultation = date("Y-m-d");
        $insert_detail->consultation_type_id = 0;
        $insert_detail->created_by =  auth()->user()->id;
        $insert_detail->created_at =  date("Y-m-d H:i:s");
        $insert_detail->save();

        return redirect('frontend/consultation/index');
    }

    public function store_detail(Request $request)
    {
        $insert = new ConsultationDetailModel();
        $insert->consultation_id = $request->consultation_id;
        $insert->user_id = auth()->user()->id;
        $insert->consultation = $request->consultation;
        $insert->date_consultation = date("Y-m-d");
        $insert->consultation_type_id = 0;
        $insert->created_by =  auth()->user()->id;
        $insert->created_at =  date("Y-m-d H:i:s");
        $insert->save();

        return redirect(url('frontend/consultation/show', $request->consultation_id));
    }    

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $data['consultation_id'] = $id;
        $data['consultation'] = ConsultationDetailModel::with('user')->with('consultant')->where('consultation_id', $id)->get();
        return view('frontend.consultation.show', $data);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        // 
    }
}
