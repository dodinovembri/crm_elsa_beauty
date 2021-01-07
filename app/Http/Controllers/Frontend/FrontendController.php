<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\LanguangeModel;
use App\Models\CurrencyModel;
use App\Models\SocialMediaModel;
use App\Models\ProductCategoryModel;
use App\Models\ProductHomeModel;
use App\Models\AdvantageModel;
use App\Models\ProductTrendModel;
use App\Models\ProductBannerModel;
use App\Models\ProductDealModel;
use App\Models\ProductBestModel;
use App\Models\BlogModel;
use App\Models\ProductModel;
use App\Models\PartnerModel;
use App\Models\ShopInformationModel;
use App\Models\WishlistModel;
use App\Models\ServiceModel;
use App\Models\AboutUsModel;

class FrontendController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function index()
    {
        $user_id = isset(auth()->user()->id) ? auth()->user()->id : '';
        $data['product_home'] = ProductHomeModel::where('status', 1)->first();
        $data['service'] = ServiceModel::where('status', 1)->get();
        $data['product'] = ProductModel::where('status', 1)->get();
        $data['about_us'] = AboutUsModel::where('status', 1)->first();

        return view('frontend.home', $data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        // 
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
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
