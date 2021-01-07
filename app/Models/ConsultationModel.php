<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ConsultationModel extends Model
{
    public $table ='consultation';
    public $guarded ='[]';

    public function user()
    {
        return $this->belongsTo(UserModel::class, 'user_id');
    }        
}
