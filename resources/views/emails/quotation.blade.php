<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Quotaion from Creative Tech Park</title>
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
            font-size: 16px;
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
        .col-3 {
            width: 100%;
            float: left;
        }
    </style>
</head>
<body>
    <div id="container">
        <div class="row">
            <div class="col-3">
                <h3>Dear {{ $client->name }},</h3>
                <p>Greetings from Creative Tech Park! Hope you are doing well.</p>
                <p>This is a notice that an quotation has been generated on {{ now()->format('l, F jS, Y')}}.</p>
                <p>Please find the attached Quotation.</p>
                <br>
                <br>
                <p>Thank you.</p>
                <p>Regards,</p>
                <p>Creative Tech Park Team</p>
                <p>Phone: +8801639-200002</p>
                <p>Email: info@creativetechpark.com</p>
                <p>Address: 362/1 (2nd Floor), DIT Road,</p>
                <p>East Rampura, Dhaka 1219</p>
                <p><a href="https://creativetechpark.com" target="_blank" rel="noopener noreferrer">https://creativetechpark.com</a></p>
            </div>
        </div>
    </div>
</body>
</html>
