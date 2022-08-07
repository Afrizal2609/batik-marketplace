<?php

namespace App\Http\Controllers;

use App\Pelanggan;
use App\Rekening;
use App\Order;
use App\User;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Gate;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class DashboardController extends Controller
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

        //ambil data data untuk ditampilkan di card pada dashboard
        $pendapatan = DB::table('order')
            ->select(DB::raw('SUM(subtotal) as penghasilan'))
            ->where('status_order_id', 6)
            ->first();
        $transaksi = DB::table('order')
            ->select(DB::raw('COUNT(id) as total_order'))
            ->first();
        $pelanggan = DB::table('users')
            ->select(DB::raw('COUNT(id) as total_user'))
            ->where('roles', '=', 'customer')
            ->first();
        $order_terbaru = $order = DB::table('order')
            ->join('status_order', 'status_order.id', '=', 'order.status_order_id')
            ->join('users', 'users.id', '=', 'order.user_id')
            ->select('order.*', 'status_order.name', 'users.name as nama_pemesan')
            ->limit(10)
            ->get();
        $data = array(
            'pendapatan' => $pendapatan,
            'transaksi'  => $transaksi,
            'pelanggan'  => $pelanggan,
            'order_baru' => $order_terbaru,
            'notif' => $this->notif(),
            'totalPem' => $this->notif()[0] + $this->notif()[1] + $this->notif()[2] + $this->notif()[3]
        );

        return view('admin/dashboard', $data);
    }
}
