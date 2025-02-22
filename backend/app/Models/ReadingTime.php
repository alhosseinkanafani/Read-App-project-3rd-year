<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Laravel\Sanctum\HasApiTokens;
use Illuminate\Notifications\Notifiable;

use App\Models\User;
use App\Models\Book;


class ReadingTime extends Model
{
    use Notifiable , HasApiTokens, HasFactory ;

    public $fillable = [
        'user_id',
        'start_time',
        'end_time',
        'duration',
              
    ];
        public $timestamps = false;

    public function user()
    {
        return $this->belongsTo(User::class);
        }

    public function book()
    {
        return $this->belongsTo(Book::class);
        }
}
