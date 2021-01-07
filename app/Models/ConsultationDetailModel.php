<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ConsultationDetailModel extends Model
{
    public $table ='consultation_detail';
    public $guarded ='[]';

    public function consultant()
    {
        return $this->belongsTo(UserModel::class, 'consultant_id');
    }

    public function user()
    {
        return $this->belongsTo(UserModel::class, 'user_id');
    }    
}
