<?php

namespace App\Http\Controllers;

use App\Models\product;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function listItems()
    {
        $products = product::all();
        return view('index')->with('products', $products);
    }
    public function productdetails($id)
    {
        $product = Product::find($id);
        
        if ($product) {
            $shop = $product->shop;

            if ($shop) {
                return view('product', compact('product', 'shop'));
            } else {
                return redirect()->back()->with('error', 'Shop details not found for the product');
            }
        } else {
            return redirect()->back()->with('error', 'Product not found');
        }
    }
}
