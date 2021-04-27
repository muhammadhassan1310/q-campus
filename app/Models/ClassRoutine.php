<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ClassRoutine extends Model
{
    protected $fillable = ['id','created_by', 'last_updated_by', 'semester', 'subject', 'class_type', 'day',
        'start_date', 'start_time', 'end_date', 'end_time'];


    public function semester()
    {
        return $this->belongsToMany(Semester::class);
    }
    public function subject()
    {
        return $this->belongsToMany(Subject::class);
    }
    public function days()
    {
        return $this->belongsToMany(Day::class);
    }
}
