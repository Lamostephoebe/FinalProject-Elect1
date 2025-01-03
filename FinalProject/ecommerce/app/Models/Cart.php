<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Cart extends Model
{
    use HasFactory;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */

     public function product()
    {
        return $this->belongsTo(Product::class, 'productId');
    }
    protected $fillable = [
        'userId',
        'productId',
        'quantity',
    ];
}