<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <title>Quotaion PDF</title>
    <style>
        body {
            font-size: 14px;
        }
        p {
            margin: 2px 0;
            font-size: 14px;
        }
        h3 {
            margin: 4px 0;
            font-size: 18px;
        }
        /*.container {*/
        /*    box-sizing: border-box;*/
        /*}*/
        .row {
            width: 100%;
            display: flex;
            clear: both;
            margin-bottom: 1em;
        }
        .col-1 {
            width: 33.33%;
            float: left;
        }
        .col-2 {
            width: 66.66%;
            float: left;
        }
        .col-3 {
            width: 100%;
            float: left;
        }
        .spacer {
            width: 100%;
            border-bottom: 1px solid #44423f;
        }
        .logo-img {
            max-width: 100%;
            height: 80px;
            padding-top: 15px;
        }
        table {
            width: 100%;
            border-spacing: 0;
            border-collapse: collapse;
            margin-bottom: 20px;
        }
        thead {
            background: #efefef;
            text-align: left;
        }
        th {
            padding: 10px;
        }
        td {
            padding: 5px;
            border-bottom: 1px solid #44423f;
        }
        .item_ul {
            margin: 0;
            padding: 0;
            list-style: none;
        }
        .item_ul li {
            border-bottom: 1px dashed #000;
        }
        .item_ul li:last-child {
            border-bottom: none;
        }
        .no-border-btm {
            border-bottom: 0;
        }
        .mt-3 {
            margin-top: 3em;
        }
        .text-left {
            text-align: left;
        }
        .text-center {
            text-align: center;
        }
        .text-right {
            text-align: right;
        }
        #inword {
            text-transform: capitalize;
            margin-bottom: 50px;
        }
        .to {
            margin-bottom: 10px;
        }
        .page-break {
            page-break-after: always;
        }
    </style>
</head>
<body>
<div id="container">
    <div class="row">
        <div class="col-1">
            <div id="logo">
                <img src="{{ public_path('creativeTechPark.png') }}" alt="Creative Tech Park" class="logo-img">
            </div>
        </div>
        <div class="col-1"></div>
        <div class="col-1">
            <div id="info">
                <h3>Creative Tech Park</h3>
                <p>Imperial Irish Kingdom, Mo-03 <br>(3rd Floor), Merul Badda, Dhaka 1212</p>
                <p>Phone: +8801639-200002</p>
                <p>Email: info@creativetechpark.com</p>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-2">
            <div class="to">
{{--                <h3>Quotaion To,</h3>--}}
{{--                <h3>{{ $data->client->name }}</h3>--}}
{{--                <p>Phone: {{ $data->client->phone }}</p>--}}
{{--                <p>Email: {{ $data->client->email }}</p>--}}
{{--                @if ($data->client->address)--}}
{{--                    <p>Company: {{ $data->client->company }}</p>--}}
{{--                @endif--}}
{{--                @if ($data->client->address)--}}
{{--                    <p>Address: {{ $data->client->address }}</p>--}}
{{--                @endif--}}
            </div>
        </div>
        <div class="col-1">
{{--            <div class="to">--}}
{{--                <h3>Quotaion No. CTP-{{ date('Yd', strtotime($data->date)) }}{{ $data->id }}</h3>--}}
{{--                <p><strong>Created on: {{ date('D, d F, Y', strtotime($data->date)) }}</strong></p>--}}
{{--                <p><strong>Valid until: {{ date('D, d F, Y', strtotime($data->valid_until)) }}</strong></p>--}}
            </div>
        </div>
    </div>
{{--    @if ($data->subject)--}}
        <div class="row">
            <div class="col-3">
{{--                <h3>Subject: {{ $data->subject }}</h3>--}}
            </div>
        </div>
{{--    @endif--}}
    <div class="row">
        <div class="col-3">
            <table>
                <thead>
                <tr>
                    <th class="text-left">Description</th>
                    <th class="text-right">Price</th>
                </tr>
                </thead>
{{--                <tbody>--}}
{{--                @if ($data->website_id || $data->platform_id || count($data->features) || $data->design_id || ($data->page && $data->page_price) || $data->domain_id || $data->hosting_id || ($data->content_page && $data->content_price) || count($data->works))--}}
{{--                    <tr>--}}
{{--                        <td class="text-left">--}}
{{--                            <ul class="item_ul">--}}
{{--                                @if ($data->website_id)--}}
{{--                                    <li>--}}
{{--                                        <p>{{ $data->website->name }}</p>--}}
{{--                                        <small>{!! nl2br($data->website->description) !!}</small>--}}
{{--                                    </li>--}}
{{--                                @endif--}}
{{--                                @if ($data->platform_id)--}}
{{--                                    <li>--}}
{{--                                        <p>{{ $data->platform->name }}</p>--}}
{{--                                        <small>{!! nl2br($data->platform->description) !!}</small>--}}
{{--                                    </li>--}}
{{--                                @endif--}}
{{--                                @if (count($data->features))--}}
{{--                                    <li>--}}
{{--                                        <p>Additional Services</p>--}}
{{--                                        <p>--}}
{{--                                            @foreach ($data->features as $item)<span>@if(!$loop->index){{ $item->name }}@else, {{ $item->name }}@endif</span>@endforeach--}}
{{--                                        </p>--}}
{{--                                    </li>--}}
{{--                                @endif--}}
{{--                                @if ($data->design_id)--}}
{{--                                    <li>--}}
{{--                                        <p>{{ $data->design->name }}</p>--}}
{{--                                        <small>{!! nl2br($data->design->description) !!}</small>--}}
{{--                                    </li>--}}
{{--                                @endif--}}
{{--                                @if ($data->page && $data->page_price)--}}
{{--                                    <li>--}}
{{--                                        <p>Number Pages: {{ $data->page }}</p>--}}
{{--                                    </li>--}}
{{--                                @endif--}}
{{--                                @if ($data->domain_id)--}}
{{--                                    <li>--}}
{{--                                        <p>{{ $data->domain->name }}</p>--}}
{{--                                        <small>{!! nl2br($data->domain->description) !!}</small>--}}
{{--                                    </li>--}}
{{--                                @endif--}}
{{--                                @if ($data->hosting_id)--}}
{{--                                    <li>--}}
{{--                                        <p>{{ $data->hosting->name }}</p>--}}
{{--                                        <small>{!! nl2br($data->hosting->description) !!}</small>--}}
{{--                                    </li>--}}
{{--                                @endif--}}
{{--                                @if ($data->content_page && $data->content_price)--}}
{{--                                    <li>--}}
{{--                                        <p>Content Development for {{ $data->content_page }} pages</p>--}}
{{--                                    </li>--}}
{{--                                @endif--}}
{{--                                @if (count($data->works))--}}
{{--                                    <li>--}}
{{--                                        <p>Additional Work</p>--}}
{{--                                        <p>--}}
{{--                                            @foreach ($data->works as $item)--}}
{{--                                                <span>--}}
{{--                                                    @if (!$loop->index)--}}
{{--                                                        {{ $item->name }}--}}
{{--                                                    @else--}}
{{--                                                        , {{ $item->name }}--}}
{{--                                                    @endif--}}
{{--                                                </span>--}}
{{--                                            @endforeach--}}
{{--                                        </p>--}}
{{--                                    </li>--}}
{{--                                @endif--}}
{{--                            </ul>--}}
{{--                        </td>--}}
{{--                        <td class="text-right">--}}
{{--                            <p>{{ $without_additional_total }}</p>--}}
{{--                        </td>--}}
{{--                    </tr>--}}
{{--                @endif--}}

{{--                @if ($data->additional && $data->additional_price)--}}
{{--                    <tr>--}}
{{--                        <td class="text-left">--}}
{{--                            <p>{!! nl2br($data->additional) !!}</p>--}}
{{--                        </td>--}}
{{--                        <td class="text-right">--}}
{{--                            <p>{{ $data->additional_price }}</p>--}}
{{--                        </td>--}}
{{--                    </tr>--}}
{{--                @endif--}}
{{--                @if ($data->additional2 && $data->additional2_price)--}}
{{--                    <tr>--}}
{{--                        <td class="text-left">--}}
{{--                            <p>{!! nl2br($data->additional2) !!}</p>--}}
{{--                        </td>--}}
{{--                        <td class="text-right">--}}
{{--                            <p>{{ $data->additional2_price }}</p>--}}
{{--                        </td>--}}
{{--                    </tr>--}}
{{--                @endif--}}
{{--                @if ($data->additional3 && $data->additional3_price)--}}
{{--                    <tr>--}}
{{--                        <td class="text-left">--}}
{{--                            <p>{!! nl2br($data->additional3) !!}</p>--}}
{{--                        </td>--}}
{{--                        <td class="text-right">--}}
{{--                            <p>{{ $data->additional3_price }}</p>--}}
{{--                        </td>--}}
{{--                    </tr>--}}
{{--                @endif--}}
{{--                <tr>--}}
{{--                    <td class="text-right" colspan="2"><p>Sub Total = {{ $sub_total }}</p></td>--}}
{{--                </tr>--}}
{{--                @if ($data->discount)--}}
{{--                    <tr>--}}
{{--                        <td class="text-right" colspan="2"><p>Discount = {{ $data->discount }}</p></td>--}}
{{--                    </tr>--}}
{{--                @endif--}}
{{--                <tr>--}}
{{--                    <td class="text-right" colspan="2"><h3>Grand Total = {{ $total }}</h3></td>--}}
{{--                </tr>--}}
{{--                </tbody>--}}
            </table>
        </div>
    </div>
{{--    <div class="row">--}}
{{--        <div class="col-3">--}}
{{--            <p id="inword"><strong>Inword:</strong> {{ $text_total }} Taka Only.</p>--}}
{{--        </div>--}}
{{--    </div>--}}
{{--    @if ($data->note)--}}
{{--        <div class="row">--}}
{{--            <div class="col-3">--}}
{{--                <h3>Note:</h3>--}}
{{--                {!! nl2br($data->note) !!}--}}
{{--            </div>--}}
{{--        </div>--}}
{{--    @endif--}}
    <div class="row mt-3">
        <div class="col-3">
            <p class="text-center">This is an electronically generated document, no signature is required.</p>
{{--            <p class="text-center">Created By {{ $data->user->name }}</p>--}}
        </div>
    </div>
    <div class="page-break"></div>
    <div class="row">
        <div class="col-3">
            <h3>Payment Mehod:</h3>
            <p>Pay Direct to Our Corporate Bank Account</p>
            <table class="table" width="100%">
                <thead>
                <tr>
                    <th>Bank Name</th>
                    <th>Account Name</th>
                    <th>Account No</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>EASTERN BANK LTD</td>
                    <td>CREATIVE TECH PARK</td>
                    <td>1241070056170</td>
                </tr>
                <tr>
                    <td>THE CITY BANK LTD</td>
                    <td>CREATIVE TECH PARK</td>
                    <td>1502467424001</td>
                </tr>
                <tr>
                    <td>DUTCH BANGLA BANK LTD</td>
                    <td>CREATIVE TECH PARK</td>
                    <td>246.110.0005044</td>
                </tr>
                <tr>
                    <td>PREMIER BANK LTD</td>
                    <td>CREATIVE TECH PARK</td>
                    <td>13611100000331</td>
                </tr>
                </tbody>
            </table>
            <p><strong>Pay Using Our Merchant Mobile Banking Account:</strong></p>
            <p><strong>Bkash: 01639200002 (Payment)</strong></p>
            <ul>
                <li>Go to Your bKash Mobile Menu by dialing *247#</li>
                <li>Choose "Payment"</li>
                <li>Enter Merchant bKash Account Number 01639200002</li>
                <li>Enter the amount (Invoice Amount)</li>
                <li>Enter a reference (Invoice No/ Your Name)</li>
                <li>Enter Counter Number 0</li>
                <li>Now enter your bKash Mobile Menu PIN to Confirm!</li>
                <li>Done! You will receive a confirmation message from bKash*</li>
            </ul>
            <h3>Direct Payment Bill Online at <a href="https://creativetechpark.com/pay">https://creativetechpark.com/pay</a></h3>
        </div>
    </div>
{{--    @if ($data->payment_policy)--}}
        <div class="row">
            <div class="col-3">
                <h3>Payment Policy:</h3>
{{--                {!! nl2br($data->payment_policy) !!}--}}
            </div>
        </div>
{{--    @endif--}}
{{--    @if ($data->terms_of_service)--}}
        <div class="row">
            <div class="col-3">
                <h3>Terms of Service:</h3>
{{--                {!! nl2br($data->terms_of_service) !!}--}}
            </div>
        </div>
{{--    @endif--}}
</div>
</body>
</html>
