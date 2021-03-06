<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Content extends Model
{
    protected $table = 'contents';
    
    public $timestamps = true;

    protected $fillable = ['name', 'section','content'];
}
