<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Quotation Invoice PDF</title>
    <style>
        body {
            font-size: 14px;
            font-family: sans-serif !important;
        }

        p {
            margin: 2px 0;
            font-size: 14px;
        }

        h3 {
            margin: 4px 0;
            font-size: 18px;
        }

        .container {
            box-sizing: border-box;
        }

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
        }
        table th{
            text-align: center !important;
        }
        table tr{
            text-align: center !important;
            border: 1px solid #dfdfdf;
        }
        table tr th{
            padding: 1rem 0;
        }

        table tr td{
            padding: 10px 0px;
        }

        .no-border-btm {
            border-bottom: 0;
        }

        .mt-3 {
            margin-top: 3em;
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

        #mb-20 {
            margin-bottom: 50px;
        }

        .page-break {
            page-break-after: always;
        }

        small {
            font-size: 10px;
        }
    </style>
</head>
<body>

{{--{{ dd($data)  }}--}}
<div id="container">
    <div class="row">
        <div class="col-3" style="text-align: center">
                <div id="info" style="text-align: center">
                    <h3>Creative Tech Park</h3>
                    <p>Imperial Irish Kingdom, Mo-03 <br>(3rd Floor), Merul Badda, Dhaka 1212</p>
                    <p>Phone: +8801639-200002</p>
                    <p>Email: info@creativetechpark.com</p>
                </div>
        </div>
    </div>
    <div class="row" style="margin-top: 2rem">
        <div class="col-3">

            <div style="display:flex; align-items: baseline; justify-content: space-between">
                <table>
                    <tr style="border: none;">
                        <td style="text-align: left">
                            <p>Repot Date: {{ date('Y-m-d',strtotime(now()))  }}</p>
                            <p>Created By: {{ Auth::user()->name }}</p>
                        </td>
                        <td style="text-align: right">
                            <p>Page : {{ $data->currentPage() }} of {{ $data->lastPage() }}</p>
                        </td>
                    </tr>
                </table>
            </div>

            <table class="main-table">
                <thead>
                <tr>
                    <th class="text-center">Description</th>
                    <th class="text-center">Price</th>
                    <th class="text-center">Discount</th>
                    <th class="text-right">Join Date</th>
                </tr>
                </thead>
                <tbody>
                @foreach($data as $key => $item)
                    <tr style="background:{{ $key %2 == 0 ? "#f1f1f1" : "#ffffff" }} ">
                        <td>{{ $item['name']  ?? ''}}</td>
                        <td>{{ $item['phone'] ?? ''}}</td>
                        <td>{{ $item['email'] ?? $item['secondery_email'] ?? ''  }}</td>
                        <td>{{ date('Y-m-d',strtotime($item['created_at'])) }}</td>
                    </tr>
                @endforeach
                </tbody>
            </table>
        </div>
    </div>


</div>

</body>
</html>






