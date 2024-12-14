<?php

namespace App\Http\Controllers;

use App\Models\Cart;
use App\Models\product;
use App\Models\Shop;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class PageController extends Controller
{
    public function index()
    {
        return view('index');
    }
    public function register()
    {
        return view('register');
    }
    public function login()
    {
        return view('login');
    }
    public function startselling()
    {
        return view('startselling');
    }
    public function sellerregistration()
    {
        return view('sellerregistration');
    }
    public function viewshop($id)
    {
        $shop = Shop::find($id);

        if ($shop) {
            $products = product::where('shopId', $shop->id)->get();

            return view('viewshop', compact('shop', 'products'));
        } else {
            return redirect()->back()->withErrors(['error' => 'Could not find shop']);
        }
    }
    public function viewcart()
    {
        $userId = Auth::id();
        $cartItems = Cart::where('userId', $userId)->with('product')->get();

        return view('viewcart', compact('cartItems'));
    }
}
