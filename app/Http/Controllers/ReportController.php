<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ReportController extends Controller
{


    public function index(){


        // total section =============================================================================================================

        // total sum or rejected product
        $total_rejected_product = ProductionLog::sum('rejected_product');

        // total sum of net product
        $total_net_product = ProductionLog::sum('net_product');

        // total sum of finising product
        $total_finishing_product = ProductionLog::where('status', 'fininshing')->sum('net_product');

        // total sum of swieng product
        $total_net_swieng_product = ProductionLog::where('status', 'sewing')->sum('net_product');

        // total rejected form swieng product
        $total_rejected_swieng_product = ProductionLog::where('status', 'sewing')->sum('rejected_product');
        // total section =============================================================================================================


        // today section =============================================================================================================

        // today total rejected product
        $total_today_rejected_product = ProductionLog::whereDate('created_at', date('Y-m-d'))->sum('rejected_product');

        // today total net product
        $total_today_net_product = ProductionLog::whereDate('created_at', date('Y-m-d'))->sum('net_product');

        // today finishing product
        $total_today_finishing_product = ProductionLog::where('status', 'fininshing')->whereDate('created_at', date('Y-m-d'))->sum('net_product');

        // today sum of swieng product
        $total_today_net_swieng_product = ProductionLog::where('status', 'sewing')->whereDate('created_at', date('Y-m-d'))->sum('net_product');

        // toay rejected form swieng product
        $total_today_rejected_swieng_product = ProductionLog::where('status', 'sewing')->whereDate('created_at', date('Y-m-d'))->sum('rejected_product');

        // today section =============================================================================================================


        // weekly section =============================================================================================================

        // weekly total rejected product
        $total_weekly_rejected_product = ProductionLog::whereBetween('created_at', [
            Carbon::parse('last monday')->startOfDay(),
            Carbon::parse('next friday')->endOfDay(),
        ])->sum('rejected_product');;

        // weekly total net product
        $total_weekly_net_product = ProductionLog::whereBetween('created_at', [
            Carbon::parse('last monday')->startOfDay(),
            Carbon::parse('next friday')->endOfDay(),
        ])->sum('net_product');

        // weekly total net product
        $total_weekly_finishing_product = ProductionLog::where('status', 'fininshing')->whereBetween('created_at', [
            Carbon::parse('last monday')->startOfDay(),
            Carbon::parse('next friday')->endOfDay(),
        ])->sum('net_product');

        // weekly total rejected swieng product
        $total_weekly_rejected_swieng_product = ProductionLog::where('status', 'sewing')->whereBetween('created_at', [
            Carbon::parse('last monday')->startOfDay(),
            Carbon::parse('next friday')->endOfDay(),
        ])->sum('rejected_product');

        // weekly total net swieng product
        $total_weekly_net_swieng_product = ProductionLog::where('status', 'sewing')->whereBetween('created_at', [
            Carbon::parse('last monday')->startOfDay(),
            Carbon::parse('next friday')->endOfDay(),
        ])->sum('net_product');

        // weekly section =============================================================================================================


        // monthly section =============================================================================================================

        // monthly total rejected product
        $total_monthly_rejected_product = ProductionLog::whereMonth('created_at', date('m'))->sum('rejected_product');

        // monthly total net product
        $total_monthly_net_product = ProductionLog::whereMonth('created_at', date('m'))->sum('net_product');

        // monthly total finishing product
        $total_monthly_finishing_product = ProductionLog::where('status', 'fininshing')->whereMonth('created_at', date('m'))->sum('net_product');

        // monthly total net swieng product
        $total_monthly_rejected_swieng_product = ProductionLog::where('status', 'sewing')->whereMonth('created_at', date('m'))->sum('rejected_product');

        // monthly total rejected swieng product
        $total_monthly_net_swieng_product = ProductionLog::where('status', 'sewing')->whereMonth('created_at', date('m'))->sum('net_product');

        // monthly section =============================================================================================================


        // monthly section =============================================================================================================

        // yearly total rejected product
        $total_yearly_rejected_product = ProductionLog::whereYear('created_at', date('Y'))->sum('rejected_product');

        // yearly total net product
        $total_yearly_net_product = ProductionLog::whereYear('created_at', date('Y'))->sum('net_product');

        // yearly total net product
        $total_yearly_finishing_product = ProductionLog::where('status', 'fininshing')->whereYear('created_at', date('Y'))->sum('net_product');

        // yearly total rejected swieng product
        $total_yearly_rejected_swieng_product = ProductionLog::where('status', 'sewing')->whereYear('created_at', date('Y'))->sum('rejected_product');

        // yearly total net swieng product
        $total_yearly_net_swieng_product = ProductionLog::where('status', 'sewing')->whereYear('created_at', date('Y'))->sum('net_product');

        // monthly section =============================================================================================================


        $data = [];
        $data['total_rejected_sum'] = $total_rejected_product;
        $data['total_net_sum'] = $total_net_product;
        $data['total_finishing_product'] = $total_finishing_product;
        $data['total_net_swieng_product'] = $total_net_swieng_product;
        $data['total_rejected_swieng_product'] = $total_rejected_swieng_product;

        $data['total_today_rejected_product'] = $total_today_rejected_product;
        $data['total_today_net_product'] = $total_today_net_product;
        $data['total_today_finishing_product'] = $total_today_finishing_product;
        $data['total_today_net_swieng_product'] = $total_today_net_swieng_product;
        $data['total_today_rejected_swieng_product'] = $total_today_rejected_swieng_product;

        $data['total_weekly_rejected_product'] = $total_weekly_rejected_product;
        $data['total_weekly_net_product'] = $total_weekly_net_product;
        $data['total_weekly_finishing_product'] = $total_weekly_finishing_product;
        $data['total_weekly_rejected_swieng_product'] = $total_weekly_rejected_swieng_product;
        $data['total_weekly_net_swieng_product'] = $total_weekly_net_swieng_product;

        $data['total_monthly_rejected_product'] = $total_monthly_rejected_product;
        $data['total_monthly_net_product'] = $total_monthly_net_product;
        $data['total_monthly_finishing_product'] = $total_monthly_finishing_product;
        $data['total_monthly_rejected_swieng_product'] = $total_monthly_rejected_swieng_product;
        $data['total_monthly_net_swieng_product'] = $total_monthly_net_swieng_product;

        $data['total_yearly_rejected_product'] = $total_yearly_rejected_product;
        $data['total_yearly_net_product'] = $total_yearly_net_product;
        $data['total_yearly_finishing_product'] = $total_yearly_finishing_product;
        $data['total_yearly_rejected_swieng_product'] = $total_yearly_rejected_swieng_product;
        $data['total_yearly_net_swieng_product'] = $total_yearly_net_swieng_product;


        return $data;
        exit();

    }
}
