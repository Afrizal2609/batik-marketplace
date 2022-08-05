<?php

function month_date_array($year, $month){
    $days= cal_days_in_month(CAL_GREGORIAN, $month, $year);
    $array = array();
    for ($i=1; $i <= $days; $i++) {
        $date = $i.'-'.$month.'-'. $year;
        $Store = date('l\, d-m-Y', strtotime($date));
        $array[] = $Store;
    }
    return $array;
}

function get_months(){
    $arr = array();
    for ($m = 1; $m <= 12; $m++) {
        $month = date('F', mktime(0, 0, 0, $m, 1, date('Y')));
        array_push($arr, $month);
    }
    return $arr;
}

function format_rp($number){
    return 'Rp'.number_format($number, 2, ',', '.');

}