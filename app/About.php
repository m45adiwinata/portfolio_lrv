<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class About extends Model
{
    public function skills()
    {
        return $this->hasMany('App\Skill');
    }

    public function experiences()
    {
        return $this->hasMany('App\Experience');
    }

    public function education()
    {
        return $this->hasMany('App\Education');
    }

    public static function boot()
    {
        parent::boot();
        static::deleted(function($about) {
            $about->skills()->delete();
            $about->experiences()->delete();
            $about->education()->delete();
        });
    }
}
