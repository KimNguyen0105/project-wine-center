<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\App;
use Illuminate\Http\Response;
use App\Models\HbbSubscribe;
use App\Models\HbbContact;
use App\Models\HbbSubscribeWine;
use League\Flysystem\Exception;
use Illuminate\Support\Facades\Input;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;
    public function getHome()
    {
        try{
            if (Session::has('locale')) {
                App::setLocale(Session::get('locale'));
            }
            else{
                Session::put('locale', 1);
                App::setLocale(Session::get('locale'));
            }
            $id_lang=Session::get('locale');
            $name_lang=DB::table('hbb_language')->where('id',$id_lang)->value('language');
            Session::put('locale_name', $name_lang);
            $languages=DB::table('hbb_language')->orderBy('language','asc')->get();
            $sliders=DB::table('hbb_slider')->where('status',1)->orderBy('sort_order','asc')->get();
            $collections=$this->getCollection();
            $config=$this->getConfig();
            $menu=$this->getMenu();
            $products_1=$this->getProductPrice(0,0,0.75);
            $products_2=$this->getProductPrice(0,0.75,1.5);
            $products_3=$this->getProductPrice(0,1.5,3);
            $products_4=$this->getProductPrice(0,3,5);
            $brand=$this->getBrand();
            $address=$this->getAddress();
            $labels=$this->getLabels();
            $menu_product=$this->getSlug(2);
            $menu_news=$this->getSlug(3);
            $active_menu=1;
            $search=$menu_product->slug;
            $news=DB::table('hbb_news')
                ->join('hbb_news_translation','hbb_news.id','=','hbb_news_translation.news_id')
                ->join('hbb_menu_news_translation','hbb_news.menu_news_id','=','hbb_menu_news_translation.menu_news_id')
                ->join('hbb_menu_news','hbb_menu_news.id','=','hbb_menu_news_translation.menu_news_id')
                ->where('hbb_news.status',1)
                ->where('hbb_news_translation.language_id',Session::get('locale'))
                ->where('hbb_menu_news_translation.language_id',Session::get('locale'))
                ->where('hbb_menu_news.status',1)
                ->orderBy('hbb_news.updated_at','desc')
                ->select('hbb_news.id','hbb_news.avatar','hbb_news_translation.news_name',
                    'hbb_news_translation.slug','hbb_menu_news_translation.menu_news_name')
                ->limit(2)
                ->get();
            return view('home.home')->with(['language'=>$languages,
                'sliders'=>$sliders,
                'collections'=>$collections,
                'config'=>$config,
                'menu'=>$menu,
                'active_menu'=>$active_menu,
                'product_1'=>$products_1,
                'product_2'=>$products_2,
                'product_3'=>$products_3,
                'product_4'=>$products_4,
                'brands'=>$brand,'address'=>$address,
                'labels'=>$labels,'news'=>$news,
                'menu_product'=>$menu_product,
                'menu_news'=>$menu_news,'search'=>$search]);
        }
        catch (\Exception $e)
        {
            dd($e);
            return view('404');
        }

    }
    private function getSlug($id)
    {
        try{
            $id_lang=Session::get('locale');
            $menu=DB::table('hbb_menu')
                ->join('hbb_menu_translation','hbb_menu.id','=','hbb_menu_translation.menu_id')
                ->where('hbb_menu.status',1)
                ->where('hbb_menu_translation.language_id',$id_lang)
                ->where('hbb_menu.parrent_id',0)
                ->where('hbb_menu.id',$id)
                ->select('hbb_menu.id','hbb_menu_translation.menu_name as name','hbb_menu_translation.slug')
                ->first();
            return $menu;
        }
        catch (\Exception $e)
        {
            return view('404');
        }
    }
    private function getCollection()
    {
        try{
            $id_lang=Session::get('locale');
            $collections=DB::table('hbb_collection')
                ->join('hbb_collection_translation','hbb_collection.id','=','hbb_collection_translation.collection_id')
                ->where('hbb_collection_translation.language_id',$id_lang)
                ->where('hbb_collection.parrent_id',0)
                ->where('hbb_collection.status',1)->orderBy('updated_at','desc')
                ->select('hbb_collection.id','hbb_collection.avatar','hbb_collection_translation.collection_name as name','hbb_collection_translation.slug')
                ->get();
            return $collections;
        }
        catch (\Exception $e)
        {
            return view('404');
        }
    }
    private function getConfig()
    {
        try{
            $config=DB::table('hbb_system_config')->first();
            return $config;
        }
        catch (\Exception $e)
        {
            return view('404');
        }
    }
    private function getMenu()
    {
        try{
            $id_lang=Session::get('locale');
            $menu=DB::table('hbb_menu')
                ->join('hbb_menu_translation','hbb_menu.id','=','hbb_menu_translation.menu_id')
                ->where('hbb_menu.status',1)
                ->where('hbb_menu_translation.language_id',$id_lang)
                ->where('hbb_menu.parrent_id',0)
                ->orderBy('hbb_menu.sort_order','asc')
                ->select('hbb_menu.id','hbb_menu_translation.menu_name as name','hbb_menu_translation.slug',
                    'hbb_menu_translation.language_id')
                ->get();
            return $menu;
        }
        catch (\Exception $e)
        {
            return view('404');
        }
    }
    private function getBrand()
    {
        try{
            $id_lang=Session::get('locale');
            $brand=DB::table('hbb_brand')
                ->join('hbb_brand_translation','hbb_brand.id','=','hbb_brand_translation.brand_id')
                ->where('hbb_brand.status',1)
                ->where('hbb_brand_translation.language_id',$id_lang)
                ->select('hbb_brand.id','hbb_brand_translation.brand_name as name','hbb_brand_translation.slug')
                ->get();
            return $brand;
        }
        catch (\Exception $e)
        {
            return view('404');
        }
    }
    private function getAddress()
    {
        try{
            $id_lang=Session::get('locale');
            $address=DB::table('hbb_address')
                ->join('hbb_address_translation','hbb_address.id','=','hbb_address_translation.address_id')
                ->where('hbb_address.status',1)
                ->where('hbb_address_translation.language_id',$id_lang)
                ->select('hbb_address.id','hbb_address_translation.address_name as name',
                    'hbb_address_translation.address_content as content','hbb_address.phone')
                ->get();
            return $address;
        }
        catch (\Exception $e)
        {
            return view('404');
        }
    }
    private function getLabels()
    {
        try{
            $id_lang=Session::get('locale');
            $labels=DB::table('hbb_label')
                ->join('hbb_label_translation','hbb_label.id','=','hbb_label_translation.label_id')
                ->where('hbb_label_translation.language_id',$id_lang)
                ->orderBy('hbb_label.id','asc')
                ->select('hbb_label.id','hbb_label_translation.label_name as name')
                ->get();
            return $labels;
        }
        catch (\Exception $e)
        {
            return view('404');
        }
    }
    private function getProductPrice($type,$price1,$price2)
    {
        try{
            $id_lang=Session::get('locale');
            if($type==0)
            {
                if($price1==3)
                {
                    $products=DB::table('hbb_products')
                        ->join('hbb_products_translation','hbb_products.id','=','hbb_products_translation.product_id')
                        ->join('hbb_brand_translation','hbb_products.brand_id','=','hbb_brand_translation.brand_id')
                        ->join('hbb_brand','hbb_brand.id','=','hbb_brand_translation.brand_id')
                        ->join('hbb_collection','hbb_collection.id','=','hbb_products.collection_id')
                        ->join('hbb_collection_translation','hbb_collection.id','=','hbb_collection_translation.collection_id')
                        ->where('hbb_products.status',1)
                        ->where('hbb_products_translation.language_id',$id_lang)
                        ->where('hbb_brand_translation.language_id',$id_lang)
                        ->where('hbb_collection_translation.language_id',$id_lang)
                        ->where('hbb_brand.status',1)
                        ->where('hbb_products.price', '>=', $price1)
                        ->orderBy('hbb_products.updated_at','desc')
                        ->select('hbb_products.id','hbb_products.avatar','hbb_products_translation.product_name',
                            'hbb_products_translation.slug','hbb_brand_translation.brand_name','hbb_products.price',
                            'hbb_collection_translation.collection_name')
                        ->paginate(6);
                }
                else{
                    $products=DB::table('hbb_products')
                        ->join('hbb_products_translation','hbb_products.id','=','hbb_products_translation.product_id')
                        ->join('hbb_brand_translation','hbb_products.brand_id','=','hbb_brand_translation.brand_id')
                        ->join('hbb_brand','hbb_brand.id','=','hbb_brand_translation.brand_id')
                        ->join('hbb_collection','hbb_collection.id','=','hbb_products.collection_id')
                        ->join('hbb_collection_translation','hbb_collection.id','=','hbb_collection_translation.collection_id')
                        ->where('hbb_products.status',1)
                        ->where('hbb_brand.status',1)
                        ->where('hbb_collection.status',1)
                        ->where('hbb_products_translation.language_id',$id_lang)
                        ->where('hbb_brand_translation.language_id',$id_lang)
                        ->where('hbb_collection_translation.language_id',$id_lang)
                        ->Where(function ($query) use($price1,$price2) {
                            $query->where('hbb_products.price', '>', $price1)
                                ->where('hbb_products.price', '<', $price2);
                        })
                        ->orderBy('hbb_products.updated_at','desc')
                        ->select('hbb_products.id','hbb_products.avatar','hbb_products_translation.product_name',
                            'hbb_products_translation.slug','hbb_brand_translation.brand_name','hbb_products.price',
                            'hbb_collection_translation.collection_name')
                        ->paginate(6);
                }

            }
            else{
                if($price1==3)
                {
                    $products=DB::table('hbb_products')
                        ->join('hbb_products_translation','hbb_products.id','=','hbb_products_translation.product_id')
                        ->join('hbb_brand_translation','hbb_products.brand_id','=','hbb_brand_translation.brand_id')
                        ->join('hbb_brand','hbb_brand.id','=','hbb_brand_translation.brand_id')
                        ->join('hbb_collection','hbb_collection.id','=','hbb_products.collection_id')
                        ->join('hbb_collection_translation','hbb_collection.id','=','hbb_collection_translation.collection_id')
                        ->where('hbb_products.status',1)
                        ->where('hbb_products_translation.language_id',$id_lang)
                        ->where('hbb_brand_translation.language_id',$id_lang)
                        ->where('hbb_collection_translation.language_id',$id_lang)
                        ->where('hbb_brand.status',1)
                        ->where('hbb_products.price', '>=', $price1)
                        ->where('hbb_collection.parrent_id',$type)
                        ->orderBy('hbb_products.updated_at','desc')
                        ->select('hbb_products.id','hbb_products.avatar','hbb_products_translation.product_name',
                            'hbb_products_translation.slug','hbb_brand_translation.brand_name','hbb_products.price',
                            'hbb_collection_translation.collection_name')
                        ->paginate(6);
                }
                else{
                    $products=DB::table('hbb_products')
                        ->join('hbb_products_translation','hbb_products.id','=','hbb_products_translation.product_id')
                        ->join('hbb_brand_translation','hbb_products.brand_id','=','hbb_brand_translation.brand_id')
                        ->join('hbb_brand','hbb_brand.id','=','hbb_brand_translation.brand_id')
                        ->join('hbb_collection','hbb_collection.id','=','hbb_products.collection_id')
                        ->join('hbb_collection_translation','hbb_collection.id','=','hbb_collection_translation.collection_id')
                        ->where('hbb_products.status',1)
                        ->where('hbb_brand.status',1)
                        ->where('hbb_collection.status',1)
                        ->where('hbb_products_translation.language_id',$id_lang)
                        ->where('hbb_brand_translation.language_id',$id_lang)
                        ->where('hbb_collection_translation.language_id',$id_lang)
                        ->Where(function ($query) use($price1,$price2) {
                            $query->where('hbb_products.price', '>', $price1)
                                ->where('hbb_products.price', '<', $price2);
                        })
                        ->where('hbb_collection.parrent_id',$type)
                        ->orderBy('hbb_products.updated_at','desc')
                        ->select('hbb_products.id','hbb_products.avatar','hbb_products_translation.product_name',
                            'hbb_products_translation.slug','hbb_brand_translation.brand_name','hbb_products.price',
                            'hbb_collection_translation.collection_name')
                        ->paginate(6);
                }

            }

            return$products;
        }
        catch (\Exception $e)
        {

            dd(123);
            return view('404');
        }

    }
    public function setLanguage($id)
    {
        try{
            Session::put('locale', $id);
            $name_lang=DB::table('hbb_language')->where('id',$id)->value('language');
            Session::put('locale_name', $name_lang);
            return redirect('/');
        }
        catch (\Exception $e)
        {
            return view('404');
        }
    }
    public function Subscribe(Request $request)
    {
        try{
            $email=$request->email;
            $subscribe=new HbbSubscribe;
            $subscribe->email=$email;
            $subscribe->status=0;
            if($subscribe->save())
            {
                return redirect()->back()->with('subscribe', 1);
            }
            else{
                return redirect()->back()->with('subscribe', 0);
            }
        }
        catch (\Exception $e)
        {
            return view('404');
        }
    }

    //Product
    public function getMenuPage($lang,$id,$slug)
    {
        try{
            $languages=DB::table('hbb_language')->orderBy('language','asc')->get();
            $menu=$this->getMenu();
            $config=$this->getConfig();
            $labels=$this->getLabels();
            $brands=$this->getBrand();
            $address=$this->getAddress();
            $collections=$this->getCollection();
            $search=$this->getSlug(2)->slug;
            if($id==2)
            {
                $menu_product=DB::table('hbb_collection')
                    ->join('hbb_collection_translation','hbb_collection.id','=','hbb_collection_translation.collection_id')
                    ->where('hbb_collection.status',1)
                    ->where('hbb_collection_translation.language_id',Session::get('locale'))
                    ->where('hbb_collection.parrent_id',0)
                    ->select('hbb_collection.id','hbb_collection_translation.collection_name as name','hbb_collection_translation.slug')
                    ->get();
                $products_1=$this->getProductPrice(0,0,0.75);
                $products_2=$this->getProductPrice(0,0.75,1.5);
                $products_3=$this->getProductPrice(0,1.5,3);
                $products_4=$this->getProductPrice(0,3,5);
                return view('home.product.home')->with(['language'=>$languages,'menu'=>$menu,'config'=>$config,
                    'product_1'=>$products_1, 'product_2'=>$products_2, 'product_3'=>$products_3, 'product_4'=>$products_4,
                    'slug'=>$slug,'id'=>0,'menu_product'=>$menu_product,'labels'=>$labels,'brands'=>$brands,
                    'address'=>$address,'collections'=>$collections,'active_menu'=>$id,'search'=>$search]);
            }
            else if($id==3){
                $menu_news=DB::table('hbb_menu_news')
                    ->join('hbb_menu_news_translation','hbb_menu_news.id','=','hbb_menu_news_translation.menu_news_id')
                    ->where('hbb_menu_news.status',1)
                    ->where('hbb_menu_news_translation.language_id',Session::get('locale'))
                    ->select('hbb_menu_news.id','hbb_menu_news_translation.menu_news_name as name','hbb_menu_news_translation.slug')
                    ->get();
                $news= DB::table('hbb_news')
                    ->join('hbb_news_translation','hbb_news.id','=','hbb_news_translation.news_id')
                    ->join('hbb_menu_news_translation','hbb_news.menu_news_id','=','hbb_menu_news_translation.menu_news_id')
                    ->join('hbb_menu_news','hbb_menu_news.id','=','hbb_menu_news_translation.menu_news_id')
                    ->where('hbb_news.status',1)
                    ->where('hbb_news_translation.language_id',Session::get('locale'))
                    ->where('hbb_menu_news_translation.language_id',Session::get('locale'))
                    ->where('hbb_menu_news.status',1)
                    ->orderBy('hbb_news.updated_at','desc')
                    ->select('hbb_news.id','hbb_news.avatar','hbb_news_translation.news_name',
                        'hbb_news_translation.slug','hbb_menu_news_translation.menu_news_name')
                    ->paginate(6);
                return view('home.news.home')->with(['language'=>$languages,'menu'=>$menu,'config'=>$config,
                    'slug'=>$slug,'id'=>0,'menu_news'=>$menu_news,'news'=>$news,'labels'=>$labels,'brands'=>$brands,
                    'address'=>$address,'collections'=>$collections,
                    'active_menu'=>$id,'search'=>$search]);
            }
            else {
                $menu_wine = DB::table('hbb_wine_center')
                    ->join('hbb_wine_center_translation', 'hbb_wine_center.id', '=', 'hbb_wine_center_translation.wine_center_id')
                    ->where('hbb_wine_center_translation.language_id', Session::get('locale'))
                    ->select('hbb_wine_center.id', 'hbb_wine_center_translation.wine_center_content as content', 'hbb_wine_center_translation.wine_center_name as name', 'hbb_wine_center_translation.slug')
                    ->get();
                $active = 5;
                $characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
                $pin =$characters[rand(2, strlen($characters) - 1)]
                    .$characters[rand(2, strlen($characters) - 1)]
                    . mt_rand(1, 9)
                    . mt_rand(1, 9)
                    . mt_rand(1, 9);
                $address_map = DB::table('hbb_address')
                    ->join('hbb_address_translation', 'hbb_address.id', '=', 'hbb_address_translation.address_id')
                    ->where('hbb_address.status', 1)
                    ->where('hbb_address_translation.language_id', Session::get('locale'))
                    ->select('hbb_address.id', 'hbb_address_translation.address_name as name', 'hbb_address.sitemap')
                    ->get();
                return view('home.wine-center.home')->with(['language' => $languages, 'menu' => $menu, 'config' => $config,
                    'slug' => $slug, 'id' => $id, 'labels' => $labels, 'brands' => $brands,
                    'address' => $address, 'collections' => $collections, 'menu_wine' => $menu_wine, 'active' => $active,
                    'address_map' => $address_map, 'active_menu' => $id,'pin'=>$pin,'search'=>$search]);
            }
        }
        catch (\Exception $e)
        {
            dd($e);
            return view('404');
        }
    }
    public function getDetail($id_menu,$slug_menu,$lang,$id,$slug)
    {
        try{
            $languages=DB::table('hbb_language')->orderBy('language','asc')->get();
            $menu=$this->getMenu();
            $config=$this->getConfig();
            $labels=$this->getLabels();
            $brands=$this->getBrand();
            $collections=$this->getCollection();
            $address=$this->getAddress();
            if($id_menu==2)
            {

                $menu_product=DB::table('hbb_collection')
                    ->join('hbb_collection_translation','hbb_collection.id','=','hbb_collection_translation.collection_id')
                    ->where('hbb_collection.status',1)
                    ->where('hbb_collection_translation.language_id',Session::get('locale'))
                    ->where('hbb_collection.parrent_id',0)
                    ->select('hbb_collection.id','hbb_collection_translation.collection_name as name','hbb_collection_translation.slug')
                    ->get();
                $products=DB::table('hbb_products')
                    ->join('hbb_products_translation','hbb_products.id','=','hbb_products_translation.product_id')
                    ->join('hbb_collection_translation','hbb_products.collection_id','=','hbb_collection_translation.collection_id')
                    ->join('hbb_collection','hbb_collection.id','=','hbb_collection_translation.collection_id')
                    ->where('hbb_products.status',1)
                    ->where('hbb_products_translation.language_id',Session::get('locale'))
                    ->where('hbb_collection_translation.language_id',Session::get('locale'))
                    ->where('hbb_collection.status',1)
                    ->where('hbb_products.id',$id)
                    ->select('hbb_products.id','hbb_products.avatar','hbb_products_translation.product_name',
                        'hbb_products_translation.product_content','hbb_collection.parrent_id',
                        'hbb_products_translation.slug','hbb_collection_translation.collection_name','hbb_products.collection_id')
                    ->first();
                $product_images=DB::table('hbb_product_image')->where('product_id',$id)->where('status',1)->get();
                $product_other=DB::table('hbb_products')
                    ->join('hbb_products_translation','hbb_products.id','=','hbb_products_translation.product_id')
                    ->join('hbb_brand_translation','hbb_products.brand_id','=','hbb_brand_translation.brand_id')
                    ->join('hbb_brand','hbb_brand.id','=','hbb_brand_translation.brand_id')
                    ->join('hbb_collection','hbb_collection.id','=','hbb_products.collection_id')
                    ->join('hbb_collection_translation','hbb_collection.id','=','hbb_collection_translation.collection_id')
                    ->where('hbb_products.status',1)
                    ->where('hbb_brand.status',1)
                    ->where('hbb_collection.status',1)
                    ->where('hbb_products_translation.language_id',Session::get('locale'))
                    ->where('hbb_brand_translation.language_id',Session::get('locale'))
                    ->where('hbb_collection_translation.language_id',Session::get('locale'))
                    ->where('hbb_collection.parrent_id',$products->parrent_id)
                    ->where('hbb_products.id','<>',$id)
                    ->orderBy('hbb_products.updated_at','desc')
                    ->select('hbb_products.id','hbb_products.avatar','hbb_products_translation.product_name',
                        'hbb_products_translation.slug','hbb_brand_translation.brand_name','hbb_products.price',
                        'hbb_collection_translation.collection_name')
                    ->get();
                return view('home.product.detail')->with(['language'=>$languages,'menu'=>$menu,'config'=>$config,
                    'product'=>$products,'product_images'=>$product_images,'menu_product'=>$menu_product,
                    'product_others'=>$product_other,'id'=>$id_menu,'slug'=>$slug_menu,'labels'=>$labels,
                    'brands'=>$brands,'collections'=>$collections,'address'=>$address,'active_menu'=>$id_menu,
                    'search'=>$slug_menu,'id_sp'=>$id,'slug_sp'=>$slug]);

            }
            else{
                $menu_news=DB::table('hbb_menu_news')
                    ->join('hbb_menu_news_translation','hbb_menu_news.id','=','hbb_menu_news_translation.menu_news_id')
                    ->where('hbb_menu_news.status',1)
                    ->where('hbb_menu_news_translation.language_id',Session::get('locale'))
                    ->select('hbb_menu_news.id','hbb_menu_news_translation.menu_news_name as name','hbb_menu_news_translation.slug')
                    ->get();
                DB::table('hbb_news')->where('id',$id)->increment('reviews');
                $news= DB::table('hbb_news')
                    ->join('hbb_news_translation','hbb_news.id','=','hbb_news_translation.news_id')
                    ->join('hbb_menu_news_translation','hbb_news.menu_news_id','=','hbb_menu_news_translation.menu_news_id')
                    ->where('hbb_news.status',1)
                    ->where('hbb_news_translation.language_id',Session::get('locale'))
                    ->where('hbb_news.id',$id)
                    ->orderBy('hbb_news.updated_at','desc')
                    ->select('hbb_news.id','hbb_news.avatar','hbb_news_translation.news_name','hbb_news.menu_news_id',
                        'hbb_news_translation.slug','hbb_menu_news_translation.menu_news_name','hbb_news_translation.news_content')
                    ->first();
                $news_others= DB::table('hbb_news')
                    ->join('hbb_news_translation','hbb_news.id','=','hbb_news_translation.news_id')
                    ->join('hbb_menu_news_translation','hbb_news.menu_news_id','=','hbb_menu_news_translation.menu_news_id')
                    ->join('hbb_menu_news','hbb_menu_news.id','=','hbb_menu_news_translation.menu_news_id')
                    ->where('hbb_news.status',1)
                    ->where('hbb_news_translation.language_id',Session::get('locale'))
                    ->where('hbb_menu_news_translation.language_id',Session::get('locale'))
                    ->where('hbb_menu_news.status',1)
                    ->where('hbb_news.menu_news_id',$news->menu_news_id)
                    ->where('hbb_news.id','<>',$id)
                    ->orderBy('hbb_news.updated_at','desc')
                    ->select('hbb_news.id','hbb_news.avatar','hbb_news_translation.news_name',
                        'hbb_news_translation.slug','hbb_menu_news_translation.menu_news_name')
                    ->get();
                return view('home.news.detail')->with(['language'=>$languages,'menu'=>$menu,'config'=>$config,
                    'news'=>$news,'menu_news'=>$menu_news,'id'=>$id_menu,'slug'=>$slug_menu,'labels'=>$labels,
                    'brands'=>$brands,'collections'=>$collections,'address'=>$address,
                    'news_others'=>$news_others,'active_menu'=>$id_menu,'search'=>$slug_menu
                    ,'id_sp'=>$id,'slug_sp'=>$slug]);
            }
        }
        catch (\Exception $e)
        {
            dd($e);
            return view('404');
        }
    }
    public function getNewsDetail($menu,$lang,$id,$slug)
    {
        try{
            $languages=DB::table('hbb_language')->orderBy('language','asc')->get();
            $menu=DB::table('hbb_menu')
                ->join('hbb_menu_translation','hbb_menu.id','=','hbb_menu_translation.menu_id')
                ->where('hbb_menu.status',1)
                ->where('hbb_menu_translation.language_id',Session::get('locale'))
                ->where('hbb_menu.parrent_id',0)
                ->orderBy('hbb_menu.sort_order','asc')
                ->select('hbb_menu.id','hbb_menu_translation.menu_name as name','hbb_menu_translation.slug',
                    'hbb_menu_translation.language_id')
                ->get();
            $menu_product=DB::table('hbb_collection')
                ->join('hbb_collection_translation','hbb_collection.id','=','hbb_collection_translation.collection_id')
                ->where('hbb_collection.status',1)
                ->where('hbb_collection_translation.language_id',Session::get('locale'))
                ->where('hbb_collection.parrent_id',0)
                ->select('hbb_collection.id','hbb_collection_translation.collection_name as name')
                ->get();
            $config=DB::table('hbb_system_config')->first();
            $products=DB::table('hbb_products')
                ->join('hbb_products_translation','hbb_products.id','=','hbb_products_translation.product_id')
                ->join('hbb_collection_translation','hbb_products.collection_id','=','hbb_collection_translation.collection_id')
                ->join('hbb_collection','hbb_collection.id','=','hbb_collection_translation.collection_id')
                ->where('hbb_products.status',1)
                ->where('hbb_products_translation.language_id',Session::get('locale'))
                ->where('hbb_collection_translation.language_id',Session::get('locale'))
                ->where('hbb_collection.status',1)
                ->where('hbb_products.id',$id)
                ->select('hbb_products.id','hbb_products.avatar','hbb_products_translation.product_name',
                    'hbb_products_translation.product_content',
                    'hbb_products_translation.slug','hbb_collection_translation.collection_name')
                ->first();
            $product_images=DB::table('hbb_product_image')->where('product_id',$id)->where('status',1)->get();
            return view('home.product.detail')->with(['language'=>$languages,'menu'=>$menu,'config'=>$config,
                'product'=>$products,'product_images'=>$product_images,'menu_product'=>$menu_product]);
        }
        catch (\Exception $e)
        {
            dd($e);
            return view('404');
        }
    }
    public function getProduct($id_menu,$slug_menu, $id, $slug)
    {
        try{
            $languages=DB::table('hbb_language')->orderBy('language','asc')->get();
            $menu=$this->getMenu();
            $config=$this->getConfig();
            $labels=$this->getLabels();
            $brands=$this->getBrand();
            $address=$this->getAddress();
            $collections=$this->getCollection();
            if($id_menu==2)
            {
                $menu_product=DB::table('hbb_collection')
                    ->join('hbb_collection_translation','hbb_collection.id','=','hbb_collection_translation.collection_id')
                    ->where('hbb_collection.status',1)
                    ->where('hbb_collection_translation.language_id',Session::get('locale'))
                    ->where('hbb_collection.parrent_id',0)
                    ->select('hbb_collection.id','hbb_collection_translation.collection_name as name','hbb_collection_translation.slug')
                    ->get();
                $products_1=$this->getProductPrice($id,0,0.75);
                $products_2=$this->getProductPrice($id,0.75,1.5);
                $products_3=$this->getProductPrice($id,1.5,3);
                $products_4=$this->getProductPrice($id,3,5);

                return view('home.product.home')->with(['language'=>$languages,'menu'=>$menu,'config'=>$config,
                    'product_1'=>$products_1, 'product_2'=>$products_2, 'product_3'=>$products_3, 'product_4'=>$products_4,
                    'slug'=>$slug,'id'=>$id,'menu_product'=>$menu_product,'labels'=>$labels,'brands'=>$brands,
                    'address'=>$address,'collections'=>$collections,'active_menu'=>$id_menu,'search'=>$slug_menu]);
            }
            else{
                $menu_news=DB::table('hbb_menu_news')
                    ->join('hbb_menu_news_translation','hbb_menu_news.id','=','hbb_menu_news_translation.menu_news_id')
                    ->where('hbb_menu_news.status',1)
                    ->where('hbb_menu_news_translation.language_id',Session::get('locale'))
                    ->select('hbb_menu_news.id','hbb_menu_news_translation.menu_news_name as name','hbb_menu_news_translation.slug')
                    ->get();
                $news= DB::table('hbb_news')
                    ->join('hbb_news_translation','hbb_news.id','=','hbb_news_translation.news_id')
                    ->join('hbb_menu_news_translation','hbb_news.menu_news_id','=','hbb_menu_news_translation.menu_news_id')
                    ->join('hbb_menu_news','hbb_menu_news.id','=','hbb_menu_news_translation.menu_news_id')
                    ->where('hbb_news.status',1)
                    ->where('hbb_news_translation.language_id',Session::get('locale'))
                    ->where('hbb_menu_news_translation.language_id',Session::get('locale'))
                    ->where('hbb_menu_news.status',1)
                    ->where('hbb_menu_news.id',$id)
                    ->orderBy('hbb_news.updated_at','desc')
                    ->select('hbb_news.id','hbb_news.avatar','hbb_news_translation.news_name',
                        'hbb_news_translation.slug','hbb_menu_news_translation.menu_news_name')
                    ->paginate(6);
                return view('home.news.home')->with(['language'=>$languages,'menu'=>$menu,'config'=>$config,
                    'slug'=>$slug,'id'=>$id,'menu_news'=>$menu_news,'news'=>$news,'labels'=>$labels,'brands'=>$brands,
                    'address'=>$address,'collections'=>$collections,'active_menu'=>$id_menu,'search'=>$slug_menu]);
            }

        }
        catch (\Exception $e)
        {
            dd($e);
            return view('404');
        }
    }
    public function getWineCenter($slug,$id,$id_menu,$slug_menu)
    {
        try{
            $languages=DB::table('hbb_language')->orderBy('language','asc')->get();
            $menu=$this->getMenu();
            $config=$this->getConfig();
            $labels=$this->getLabels();
            $brands=$this->getBrand();
            $address=$this->getAddress();
            $collections=$this->getCollection();
            $active=$id_menu;
            $search=$this->getSlug(2)->slug;
            $menu_wine=DB::table('hbb_wine_center')
                ->join('hbb_wine_center_translation','hbb_wine_center.id','=','hbb_wine_center_translation.wine_center_id')
                ->where('hbb_wine_center_translation.language_id',Session::get('locale'))
                ->select('hbb_wine_center.id','hbb_wine_center_translation.wine_center_name as name','hbb_wine_center_translation.slug')
                ->get();
            if($id_menu!=5)
            {
                $about=DB::table('hbb_wine_center')
                    ->join('hbb_wine_center_translation','hbb_wine_center.id','=','hbb_wine_center_translation.wine_center_id')
                    ->where('hbb_wine_center.id',$id_menu)
                    ->where('hbb_wine_center_translation.language_id',Session::get('locale'))
                    ->select('hbb_wine_center.id','hbb_wine_center_translation.wine_center_content as content','hbb_wine_center_translation.wine_center_name as name')
                    ->first();
                return view('home.wine-center.detail')->with(['language'=>$languages,'menu'=>$menu,'config'=>$config,
                    'slug'=>$slug,'id'=>$id,'labels'=>$labels,'brands'=>$brands,
                    'address'=>$address,'collections'=>$collections,'about'=>$about,
                    'menu_wine'=>$menu_wine,'active'=>$active,'active_menu'=>$id_menu,'search'=>$search,
                    'id_sp'=>$id_menu,'slug_sp'=>$slug_menu]);
            }
            else
            {
                $characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
                $pin =$characters[rand(2, strlen($characters) - 1)]
                    .$characters[rand(2, strlen($characters) - 1)]
                    . mt_rand(1, 9)
                    . mt_rand(1, 9)
                    . mt_rand(1, 9);
                $address_map=DB::table('hbb_address')
                    ->join('hbb_address_translation','hbb_address.id','=','hbb_address_translation.address_id')
                    ->where('hbb_address.status',1)
                    ->where('hbb_address_translation.language_id',Session::get('locale'))
                    ->select('hbb_address.id','hbb_address_translation.address_name as name','hbb_address.sitemap')
                    ->get();
                return view('home.wine-center.home')->with(['language'=>$languages,'menu'=>$menu,'config'=>$config,
                    'slug'=>$slug,'id'=>$id,'labels'=>$labels,'brands'=>$brands,
                    'address'=>$address,'collections'=>$collections,'menu_wine'=>$menu_wine,'active'=>$active,
                    'address_map'=>$address_map,'active_menu'=>$id_menu,'pin'=>$pin,'search'=>$search]);
            }
        }
        catch (\Exception $e)
        {
            dd($e);
            return view('404');
        }
    }
    public function SubmitContact(Request $request)
    {
        try{
            $contact=new HbbContact;
            $contact->name=$request->name;
            $contact->email=$request->email;
            $contact->phone=$request->phone;
            $contact->message=$request->message;
            $contact->status=0;
            $contact->current_language=Session::get('locale');
            if($contact->save())
            {
                return redirect()->back()->with('message', 1);
            }
            else{
                return redirect()->back()->with('message', 0);
            }
        }
        catch (\Exception $e)
        {
            dd($e);
            return view('404');
        }
    }
    public function SubscribeWine(Request $request)
    {
        try{
            $subscribe=new HbbSubscribeWine;
            $subscribe->name=$request->name;
            $subscribe->email=$request->email;
            $subscribe->phone=$request->phone;
            $subscribe->date=$request->date;
            $subscribe->message=$request->message;
            $subscribe->language_id=Session::get('locale');
            $subscribe->product_id=$request->id;
            $subscribe->status=0;
            if($subscribe->save())
            {
                return redirect()->back()->with('message', 1);
            }
            else{
                return redirect()->back()->with('message', 0);
            }
        }
        catch (\Exception $e)
        {
            dd($e);
            return view('404');
        }
    }
    private function getProductSearch($name,$price1,$price2)
    {
        try{
            $id_lang=Session::get('locale');
            if($price1==3)
            {
                $products=DB::table('hbb_products')
                    ->join('hbb_products_translation','hbb_products.id','=','hbb_products_translation.product_id')
                    ->join('hbb_brand_translation','hbb_products.brand_id','=','hbb_brand_translation.brand_id')
                    ->join('hbb_brand','hbb_brand.id','=','hbb_brand_translation.brand_id')
                    ->join('hbb_collection','hbb_collection.id','=','hbb_products.collection_id')
                    ->join('hbb_collection_translation','hbb_collection.id','=','hbb_collection_translation.collection_id')
                    ->where('hbb_products.status',1)
                    ->where('hbb_products_translation.language_id',$id_lang)
                    ->where('hbb_brand_translation.language_id',$id_lang)
                    ->where('hbb_collection_translation.language_id',$id_lang)
                    ->where('hbb_brand.status',1)
                    ->where('hbb_products.price', '>=', $price1)
                    ->Where(function ($query) use($name) {
                        $query->where('hbb_products_translation.product_name', 'like','%'.$name.'%')
                            ->orWhere('hbb_brand_translation.brand_name', 'like','%'.$name.'%')
                            ->orWhere('hbb_collection_translation.collection_name', 'like','%'.$name.'%');
                    })
                    ->orderBy('hbb_products.updated_at','desc')
                    ->select('hbb_products.id','hbb_products.avatar','hbb_products_translation.product_name',
                        'hbb_products_translation.slug','hbb_brand_translation.brand_name','hbb_products.price',
                        'hbb_collection_translation.collection_name')
                    ->paginate(6);
            }
            else{
                $products=DB::table('hbb_products')
                    ->join('hbb_products_translation','hbb_products.id','=','hbb_products_translation.product_id')
                    ->join('hbb_brand_translation','hbb_products.brand_id','=','hbb_brand_translation.brand_id')
                    ->join('hbb_brand','hbb_brand.id','=','hbb_brand_translation.brand_id')
                    ->join('hbb_collection','hbb_collection.id','=','hbb_products.collection_id')
                    ->join('hbb_collection_translation','hbb_collection.id','=','hbb_collection_translation.collection_id')
                    ->where('hbb_products.status',1)
                    ->where('hbb_brand.status',1)
                    ->where('hbb_collection.status',1)
                    ->where('hbb_products_translation.language_id',$id_lang)
                    ->where('hbb_brand_translation.language_id',$id_lang)
                    ->where('hbb_collection_translation.language_id',$id_lang)
                    ->Where(function ($query) use($price1,$price2) {
                        $query->where('hbb_products.price', '>', $price1)
                            ->where('hbb_products.price', '<', $price2);
                    })
                    ->Where(function ($query) use($name) {
                        $query->where('hbb_products_translation.product_name', 'like','%'.$name.'%')
                            ->orWhere('hbb_brand_translation.brand_name', 'like','%'.$name.'%')
                            ->orWhere('hbb_collection_translation.collection_name', 'like','%'.$name.'%');
                    })
                    ->orderBy('hbb_products.updated_at','desc')
                    ->select('hbb_products.id','hbb_products.avatar','hbb_products_translation.product_name',
                        'hbb_products_translation.slug','hbb_brand_translation.brand_name','hbb_products.price',
                        'hbb_collection_translation.collection_name')
                    ->paginate(6);
            }
            return $products;
        }
        catch (\Exception $e)
        {

            dd(123);
            return view('404');
        }

    }
    public function SearchProduct($slug,Request $request)
    {
        try{
            $name=$request->name;
            $languages=DB::table('hbb_language')->orderBy('language','asc')->get();
            $menu=$this->getMenu();
            $config=$this->getConfig();
            $labels=$this->getLabels();
            $brands=$this->getBrand();
            $address=$this->getAddress();
            $collections=$this->getCollection();
            $menu_product=DB::table('hbb_collection')
                ->join('hbb_collection_translation','hbb_collection.id','=','hbb_collection_translation.collection_id')
                ->where('hbb_collection.status',1)
                ->where('hbb_collection_translation.language_id',Session::get('locale'))
                ->where('hbb_collection.parrent_id',0)
                ->select('hbb_collection.id','hbb_collection_translation.collection_name as name','hbb_collection_translation.slug')
                ->get();
            $products_1=$this->getProductSearch($name,0,0.75);
            $products_2=$this->getProductSearch($name,0.75,1.5);
            $products_3=$this->getProductSearch($name,1.5,3);
            $products_4=$this->getProductSearch($name,3,5);
            return view('home.product.home')->with(['language'=>$languages,'menu'=>$menu,'config'=>$config,
                'product_1'=>$products_1->appends(Input::except('page')),
                'product_2'=>$products_2->appends(Input::except('page')),
                'product_3'=>$products_3->appends(Input::except('page')),
                'product_4'=>$products_4->appends(Input::except('page')),
                'slug'=>$slug,'id'=>0,'menu_product'=>$menu_product,'labels'=>$labels,'brands'=>$brands,
                'address'=>$address,'collections'=>$collections,'active_menu'=>2,'search'=>$slug]);
        }
        catch (\Exception $e)
        {
            dd($e);
            return view('404');
        }
    }
    private function getFilterProduct($type,$id)
    {
        try{
            $id_lang=Session::get('locale');
            if($type==1)
            {
                $products=DB::table('hbb_products')
                    ->join('hbb_products_translation','hbb_products.id','=','hbb_products_translation.product_id')
                    ->join('hbb_brand_translation','hbb_products.brand_id','=','hbb_brand_translation.brand_id')
                    ->join('hbb_brand','hbb_brand.id','=','hbb_brand_translation.brand_id')
                    ->join('hbb_collection','hbb_collection.id','=','hbb_products.collection_id')
                    ->join('hbb_collection_translation','hbb_collection.id','=','hbb_collection_translation.collection_id')
                    ->where('hbb_products.status',1)
                    ->where('hbb_collection.status',1)
                    ->where('hbb_brand.status',1)
                    ->where('hbb_products_translation.language_id',$id_lang)
                    ->where('hbb_brand_translation.language_id',$id_lang)
                    ->where('hbb_collection_translation.language_id',$id_lang)
                    ->where('hbb_brand.id',$id)
                    ->orderBy('hbb_products.updated_at','desc')
                    ->select('hbb_products.id','hbb_products.avatar','hbb_products_translation.product_name',
                        'hbb_products_translation.slug','hbb_brand_translation.brand_name','hbb_products.price',
                        'hbb_collection_translation.collection_name')
                    ->paginate(6);
            }
            else{
                $products=DB::table('hbb_products')
                    ->join('hbb_products_translation','hbb_products.id','=','hbb_products_translation.product_id')
                    ->join('hbb_brand_translation','hbb_products.brand_id','=','hbb_brand_translation.brand_id')
                    ->join('hbb_brand','hbb_brand.id','=','hbb_brand_translation.brand_id')
                    ->join('hbb_collection','hbb_collection.id','=','hbb_products.collection_id')
                    ->join('hbb_collection_translation','hbb_collection.id','=','hbb_collection_translation.collection_id')
                    ->where('hbb_products.status',1)
                    ->where('hbb_brand.status',1)
                    ->where('hbb_collection.status',1)
                    ->where('hbb_products_translation.language_id',$id_lang)
                    ->where('hbb_brand_translation.language_id',$id_lang)
                    ->where('hbb_collection_translation.language_id',$id_lang)
                    ->where('hbb_collection.parrent_id',$id)
                    ->orderBy('hbb_products.updated_at','desc')
                    ->select('hbb_products.id','hbb_products.avatar','hbb_products_translation.product_name',
                        'hbb_products_translation.slug','hbb_brand_translation.brand_name','hbb_products.price',
                        'hbb_collection_translation.collection_name')
                    ->paginate(6);
            }
            return $products;
        }
        catch (\Exception $e)
        {

            dd(123);
            return view('404');
        }

    }
    public function getBrandProduct($slug_menu,$slug,$id)
    {
        try{
            $languages=DB::table('hbb_language')->orderBy('language','asc')->get();
            $menu=$this->getMenu();
            $config=$this->getConfig();
            $labels=$this->getLabels();
            $brands=$this->getBrand();
            $address=$this->getAddress();
            $collections=$this->getCollection();
            $menu_product=DB::table('hbb_collection')
                ->join('hbb_collection_translation','hbb_collection.id','=','hbb_collection_translation.collection_id')
                ->where('hbb_collection.status',1)
                ->where('hbb_collection_translation.language_id',Session::get('locale'))
                ->where('hbb_collection.parrent_id',0)
                ->select('hbb_collection.id','hbb_collection_translation.collection_name as name','hbb_collection_translation.slug')
                ->get();
            $products=$this->getFilterProduct(1,$id);
            return view('home.product.filter')->with(['language'=>$languages,'menu'=>$menu,'config'=>$config,
                'product'=>$products->appends(Input::except('page')),
                'slug'=>$slug_menu,'id'=>0,'menu_product'=>$menu_product,'labels'=>$labels,'brands'=>$brands,
                'address'=>$address,'collections'=>$collections,'active_menu'=>2,'search'=>$slug_menu,'title'=>1]);
        }
        catch (\Exception $e)
        {
            dd($e);
            return view('404');
        }
    }
    public function getCollectionProduct($slug_menu,$slug,$id)
    {
        try{
            $languages=DB::table('hbb_language')->orderBy('language','asc')->get();
            $menu=$this->getMenu();
            $config=$this->getConfig();
            $labels=$this->getLabels();
            $brands=$this->getBrand();
            $address=$this->getAddress();
            $collections=$this->getCollection();
            $menu_product=DB::table('hbb_collection')
                ->join('hbb_collection_translation','hbb_collection.id','=','hbb_collection_translation.collection_id')
                ->where('hbb_collection.status',1)
                ->where('hbb_collection_translation.language_id',Session::get('locale'))
                ->where('hbb_collection.parrent_id',0)
                ->select('hbb_collection.id','hbb_collection_translation.collection_name as name','hbb_collection_translation.slug')
                ->get();
            $products=$this->getFilterProduct(2,$id);
            return view('home.product.filter')->with(['language'=>$languages,'menu'=>$menu,'config'=>$config,
                'product'=>$products->appends(Input::except('page')),
                'slug'=>$slug_menu,'id'=>0,'menu_product'=>$menu_product,'labels'=>$labels,'brands'=>$brands,
                'address'=>$address,'collections'=>$collections,'active_menu'=>2,'search'=>$slug_menu,'title'=>2]);
        }
        catch (\Exception $e)
        {
            dd($e);
            return view('404');
        }
    }
    public function getPriceProduct($slug_menu,$id)
    {
        try{
            $languages=DB::table('hbb_language')->orderBy('language','asc')->get();
            $menu=$this->getMenu();
            $config=$this->getConfig();
            $labels=$this->getLabels();
            $brands=$this->getBrand();
            $address=$this->getAddress();
            $collections=$this->getCollection();
            $menu_product=DB::table('hbb_collection')
                ->join('hbb_collection_translation','hbb_collection.id','=','hbb_collection_translation.collection_id')
                ->where('hbb_collection.status',1)
                ->where('hbb_collection_translation.language_id',Session::get('locale'))
                ->where('hbb_collection.parrent_id',0)
                ->select('hbb_collection.id','hbb_collection_translation.collection_name as name','hbb_collection_translation.slug')
                ->get();
            if($id==1) {
                $products=$this->getProductPrice(0,0,0.75);
            }
            else if($id==2) {
                $products=$this->getProductPrice(0,0.75,1.5);
            }
            else if($id==3){
                $products=$this->getProductPrice(0,1.5,3);
            }
            else{
                $products=$this->getProductPrice(0,3,5);
            }
            return view('home.product.filter')->with(['language'=>$languages,'menu'=>$menu,'config'=>$config,
                'product'=>$products->appends(Input::except('page')),
                'slug'=>$slug_menu,'id'=>0,'menu_product'=>$menu_product,'labels'=>$labels,'brands'=>$brands,
                'address'=>$address,'collections'=>$collections,'active_menu'=>2,'search'=>$slug_menu,'title'=>3]);
        }
        catch (\Exception $e)
        {
            dd($e);
            return view('404');
        }
    }
}
