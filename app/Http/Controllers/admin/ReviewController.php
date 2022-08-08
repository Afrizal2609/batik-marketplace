<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use Illuminate\Support\Facades\DB;
use App\ResponseReview;

class ReviewController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    function notif()
    {
        // untuk notifikasi pesanan baru
        $order1 = DB::table('detail_order')
            ->join('order', 'order.id', '=', 'detail_order.order_id')
            ->join('products', 'products.id', '=', 'detail_order.product_id')
            ->select(DB::raw('distinct detail_order.*', 'order.*', 'products.*'))
            ->where('order.status_order_id', 1)
            ->groupBy('order.id')
            ->get();

        // untuk notifikasi perlu dicek
        $order2 = DB::table('detail_order')
            ->join('order', 'order.id', '=', 'detail_order.order_id')
            ->join('products', 'products.id', '=', 'detail_order.product_id')
            ->select(DB::raw('distinct detail_order.*', 'order.*', 'products.*'))
            ->whereIn('order.status_order_id', [2, 3])
            ->groupBy('order.id')
            ->get();

        // untuk notifikasi perlu dikirim
        $order3 = DB::table('detail_order')
            ->join('order', 'order.id', '=', 'detail_order.order_id')
            ->join('products', 'products.id', '=', 'detail_order.product_id')
            ->select(DB::raw('distinct detail_order.*', 'order.*', 'products.*'))
            ->where('order.status_order_id', 4)
            ->groupBy('order.id')
            ->get();

        // untuk notifikasi barang dikirim
        $order4 = DB::table('detail_order')
            ->join('order', 'order.id', '=', 'detail_order.order_id')
            ->join('products', 'products.id', '=', 'detail_order.product_id')
            ->select(DB::raw('distinct detail_order.*', 'order.*', 'products.*'))
            ->where('order.status_order_id', 5)
            ->groupBy('order.id')
            ->get();

        $notif1 = count($order1);
        $notif2 = count($order2);
        $notif3 = count($order3);
        $notif4 = count($order4);
        return [$notif1, $notif2, $notif3, $notif4];

        $totalPem = $notif1 + $notif2 + $notif3 + $notif4;
    }

    public function index()
    {
        //membawa data produk yang di join dengan table kategori
        $reviews = DB::table('reviews')
            ->join('products', 'products.id', '=', 'reviews.product_id')
            ->join('order', 'order.id', '=', 'reviews.order_id')
            ->join('users', 'users.id', '=', 'order.user_id')
            ->select('products.name as product_name', 'users.id as user_id', 'users.name as user_name', 'reviews.*', 'reviews.review as penilaian')
            ->orderBy('created_at', 'desc')
            ->get();
        $data = array(
            'reviews' => $reviews,
            'notif' => $this->notif(),
            'totalPem' => $this->notif()[0] + $this->notif()[1] + $this->notif()[2] + $this->notif()[3]
        );

        // return $reviews;
        return view('admin.penilaian.tanggapan', $data);
    }

    public function detail($id)
    {
        //mengambil detail review produk
        $review = DB::table('reviews')
            ->join(
                'products',
                'products.id',
                '=',
                'reviews.product_id'
            )
            ->join('order', 'order.id', '=', 'reviews.order_id')
            ->join('users', 'users.id', '=', 'order.user_id')
            ->select('products.name as product_name', 'users.id as user_id', 'users.name as user_name', 'order.id as order_id', 'order.invoice', 'reviews.*', 'reviews.review as penilaian')
            ->where('reviews.id', $id)
            ->first();

        $responseReview = DB::table('response_review')
            ->join(
                'reviews',
                'reviews.id',
                '=',
                'response_review.review_id'
            )
            ->join('users', 'users.id', '=', 'response_review.user_id')
            ->select('response_review.*', 'users.name as user_name')
            ->where('response_review.review_id', $id)
            ->first();
        $data = array(
            'review' => $review,
            'responseReview' => $responseReview
        );
        // return $review;
        return view('admin.penilaian.detail', $data);
    }
}
