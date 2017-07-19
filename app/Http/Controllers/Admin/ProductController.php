<?php

namespace App\Http\Controllers\Admin;

use App\Models\HbbCollection;
use Illuminate\Http\Request;
use Carbon\Carbon;
use App\Http\Controllers\Controller;
use App\Models\HbbUser;
use App\Models\HbbLanguage;
use App\Models\HbbProduct;
use App\Models\HbbProductsTranslation;
use App\Models\HbbCollectionTranslation;
use DB;
use Illuminate\Support\Facades\Session;
use Image;

class ProductController extends Controller
{
    public function getProductAdmin($id)
    {
        $langguage = HbbLanguage::get();
        $products = DB::table('hbb_products')
            ->join('hbb_products_translation', 'hbb_products.id', '=', 'hbb_products_translation.product_id')
            ->where('hbb_products_translation.language_id', $id)
            ->orderBy('hbb_products.updated_at', 'desc')
            ->select('hbb_products.*', 'hbb_products_translation.product_name')
            ->get();
        return view('admin.product.product', [
            'products' => $products,
            'language' => $langguage,
        ]);
    }

    public function getCreateProduct()
    {
        $language = HbbLanguage::get();
        $collections = DB::table('hbb_collection')
            ->join('hbb_collection_translation', 'hbb_collection.id', '=', 'hbb_collection_translation.collection_id')
            ->where('hbb_collection_translation.language_id', 2)
            ->where('hbb_collection.parrent_id', 0)
            ->select('hbb_collection.*', 'hbb_collection_translation.collection_name')
            ->get();
        $countrys = DB::table('hbb_country')->join('hbb_country_translation', 'hbb_country.id', '=', 'hbb_country_translation.country_id')
            ->where('hbb_country_translation.language_id', 2)
            ->select('hbb_country.*', 'hbb_country_translation.country_name')
            ->get();
        $brands = DB::table('hbb_brand')
            ->join('hbb_brand_translation', 'hbb_brand.id', '=', 'hbb_brand_translation.brand_id')
            ->where('hbb_brand_translation.language_id', 2)
            ->select('hbb_brand.*', 'hbb_brand_translation.brand_name')
            ->get();
        return view('admin.product.create-product', [
            'language' => $language,
            'collections' => $collections,
            'countrys' => $countrys,
            'brands' => $brands
        ]);
    }

    public function postCreateProduct(Request $request)
    {
        try {
            $language = HbbLanguage::get();
            $products = new HbbProduct();
            if($request->get('imgAvatar') != null){
                $products->avatar = $request->get('imgAvatar');
            } else {
                $products->avatar = 'default.png';
            }

            $products->price = $request->get('price');
            $products->collection_id = $request->get('collection_id');
            $products->country_id = $request->get('country_id');
            $products->brand_id = $request->get('brand_id');
            $products->updated_at = Carbon::now();
            $products->created_at = Carbon::now();
            $products->status = 1;
            $products->save();
            foreach ($language as $lang) {
                DB::table('hbb_products_translation')->insert([
                    'language_id' => $lang->id,
                    'product_id' => $products->id,
                    'slug' => str_slug($request->get('product_name' . $lang->id)),
                    'product_name' => $request->get('product_name' . $lang->id),
                    'product_content' => $request->get('product_content' . $lang->id),
                ]);
            }
//            $request->session()->keep($request->all());
            return redirect('/admin/1-product')->with('success', 'Updated successfully');
        } catch (\Exception $e) {
            dd($e);
        }
    }

    public function getEditProduct($id)
    {
        $language = HbbLanguage::get();
        $collections = DB::table('hbb_collection')
            ->join('hbb_collection_translation', 'hbb_collection.id', '=', 'hbb_collection_translation.collection_id')
            ->where('hbb_collection_translation.language_id', 2)
            ->where('hbb_collection.parrent_id', 0)
            ->select('hbb_collection.*', 'hbb_collection_translation.collection_name')
            ->get();
        $countrys = DB::table('hbb_country')->join('hbb_country_translation', 'hbb_country.id', '=', 'hbb_country_translation.country_id')
            ->where('hbb_country_translation.language_id', 2)
            ->select('hbb_country.*', 'hbb_country_translation.country_name')
            ->get();
        $brands = DB::table('hbb_brand')
            ->join('hbb_brand_translation', 'hbb_brand.id', '=', 'hbb_brand_translation.brand_id')
            ->where('hbb_brand_translation.language_id', 2)
            ->select('hbb_brand.*', 'hbb_brand_translation.brand_name')
            ->get();
        $products = DB::table('hbb_products')
            ->join('hbb_products_translation', 'hbb_products.id', '=', 'hbb_products_translation.product_id')
            ->where('hbb_products.id', $id)
            ->select('hbb_products.avatar', 'hbb_products.collection_id', 'hbb_products.status', 'hbb_products.price', 'hbb_products.brand_id', 'hbb_products.country_id', 'hbb_products_translation.*')
            ->get();
        return view('admin.product.edit-product', [
            'language' => $language,
            'id' => $id,
            'collections' => $collections,
            'countrys' => $countrys,
            'brands' => $brands,
            'products' => $products
        ]);
    }

    public function postEditProduct(Request $request, $id)
    {
        try {
            $language = HbbLanguage::get();
            $products = HbbProduct::find($id);
            $products->avatar = $request->get('imgAvatar');
            $products->price = $request->get('price');
            $products->collection_id = $request->get('collection_id');
            $products->brand_id = $request->get('brand_id');
            $products->country_id = $request->get('country_id');
            $products->updated_at = Carbon::now();
            $products->created_at = Carbon::now();
            $products->status = $request->get('status');
            $products->save();
            foreach ($language as $lang) {
                DB::table('hbb_products_translation')
                    ->where('product_id', $id)
                    ->where('language_id', $lang->id)
                    ->update([
                        'product_name' => $request->get('product_name' . $lang->id),
                        'product_content' => $request->get('product_content' . $lang->id),
                        'slug' => str_slug($request->get('product_name' . $lang->id))
                    ]);
            }
            return redirect('/admin/1-product')->with('success', 'Update successfully');
        } catch (\Exception $err) {
            dd($err);
        }
    }
    public function getDeleteProduct($id)
    {
        return view('/admin/product/delete-product',[
            'id'=>$id,
        ]);
    }
    public function postDeleteProduct($id)
    {
        HbbProduct::where('id',$id)->delete();
        return redirect('admin/1-product')->with('success','Deleted successfully');
    }
}
