<!DOCTYPE html>
<html>
<head>
    <title></title>
    <meta charset="utf-8" />
{{--    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>--}}
{{--    <script src="https://cdn.bootcss.com/html2pdf.js/0.9.1/html2pdf.bundle.js"></script>--}}
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.1/html2pdf.bundle.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
{{--    https://www.api2pdf.com/free-bootstrap-4-html-template-for-displaying-database-records-to-pdf/--}}
    <style>
        table {
            font-family: arial, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        td, th {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }

        tr:nth-child(even) {
            background-color: #dddddd;
        }
        form > h2{
            color: #0094ff;
        }
        form > p:first-child{
            font-size: large;
        }
        .createPDF{
            font-size: 14px;
        }
    </style>
    <script>
        function createPDF() {
            var element = document.getElementById('element-to-print');
            html2pdf(element, {
                margin:1,
                padding:0,
                filename: 'myfile.pdf',
                image: { type: 'jpeg', quality: 1 },
                html2canvas: { scale: 1,  logging: true },
                jsPDF: { unit: 'in', format: 'b4', orientation: 'P' },
                class: createPDF
            });
        };
        // function exportHTML(){
        //     var header = "<html xmlns:o='urn:schemas-microsoft-com:office:office' "+
        //             "xmlns:w='urn:schemas-microsoft-com:office:word' "+
        //             "xmlns='http://www.w3.org/TR/REC-html40'>"+
        //             "<head><meta charset='utf-8'><title>Export HTML to Word Document with JavaScript</title></head><body>";
        //     var footer = "</body></html>";
        //     var sourceHTML = header+document.getElementById("element-to-print").innerHTML+footer;

        //     var source = 'data:application/vnd.ms-word;charset=utf-8,' + encodeURIComponent(sourceHTML);
        //     var fileDownload = document.createElement("a");
        //     document.body.appendChild(fileDownload);
        //     fileDownload.href = source;
        //     fileDownload.download = 'document.doc';
        //     fileDownload.click();
        //     document.body.removeChild(fileDownload);
        // }

    </script>
</head>
<body class="container">
<div id="element-to-print">


    <!-- Sample Table -->
    <form class="form">

        <h2>Hello</h2>
        <h3>a bit about this Project:</h3>
        <p>
            I will demonstrate how to generate PDF file of your HTML page with CSS using JavaScript and J query.
        </p>
        <table>
            <tbody>
            <tr>
                <th>Company</th>
                <th>Contact</th>
                <th>Country</th>
            </tr>
            <tr>
                <td>Alfreds Futterkiste</td>
                <td>Maria Anders</td>
                <td>Germany</td>
            </tr>
            <tr>
                <td>Centro comercial Moctezuma</td>
                <td>Francisco Chang</td>
                <td>Mexico</td>
            </tr>
            <tr>
                <td>Ernst Handel</td>
                <td>Roland Mendel</td>
                <td>Austria</td>
            </tr>
            <tr>
                <td>Island Trading</td>
                <td>Helen Bennett</td>
                <td>UK</td>
            </tr>
            <tr>
                <td>Laughing Bacchus Winecellars</td>
                <td>Yoshi Tannamuri</td>
                <td>Canada</td>
            </tr>
            <tr>
                <td>Magazzini Alimentari Riuniti</td>
                <td>Giovanni Rovelli</td>
                <td>Italy</td>
            </tr>
            </tbody>
        </table>

    </form>
    <!-- Sample Progressbar -->
    <div>
        <h2>Basic Progress Bar</h2>
        <div class="progress">
            <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width:70%">
                <span class="sr-only">70% Complete</span>
            </div>
        </div>
        <div class="progress">
            <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40"
                 aria-valuemin="0" aria-valuemax="100" style="width:40%">
                <span class="sr-only">40% Complete (success) </span>
            </div>
        </div>
        <div class="progress">
            <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="40"
                 aria-valuemin="0" aria-valuemax="100" style="width:60%">
                <span class="sr-only">40% Complete (success) </span>
            </div>
        </div>
    </div>
    <br><br>

    <table class="table table-bordered table-condensed bg-danger">
        <tbody>
        <tr>
            <td>
                <h6>
                    <strong>Product name</strong>
                </h6>
                <span>Api2Pdf</span>
            </td>
        </tr>
        <tr>
            <td>
                <h6>
                    <strong>Brief product description</strong>
                </h6>
                <span>Api2Pdf</span>
            </td>
        </tr>
        <tr>
            <td>
                <h6>
                    <strong>Why did you create this product?</strong>
                </h6>
                <span>
                            <p class="text-danger">Api2Pdf is a REST API that helps application developers generate PDFs at massive scale. It was
                                co-founded by myself, Zack Schwartz, and my partner Kunal Johar. The two of us also run another
                                company called
                                <a href="https://www.getopenwater.com">OpenWater</a>. OpenWater’s customers live and die by PDFs. And they are not normal PDFs either.
                                Often times, the PDFs are hundreds of pages long and contain high-res photos. As our customer
                                base grew, our costs to generate PDFs ballooned. Eventually, we had a whole server dedicated
                                to producing PDFs and nothing else. Scaled all the way up, it was costing us over $1000 a
                                month.</p>
                            <p>That server eventually crashed too, and customers couldn’t generate PDFs anymore. One of our
                                customers relying on this capability had a deadline to send the PDFs to their publisher for
                                printing the next day for their main event of the year.</p>
                            <p>In response to this meltdown, we needed a completely fresh approach. </p>
                            <p>We knew from the get-go that our stack had to be fast and cheap. We love .NET and wanted to explore
                                the brand new .NET Core. What attracted us to .NET Core was how lightweight and fast it is,
                                and that it’s cross platform. Our web portal and API key management is completely written
                                in .NET Core. Our logs are stored in Azure Table Storage. We considered a Python + Flask
                                stack, but quickly dismissed the idea.</p>
                            <p>To keep costs down, PDF generation had to be built on a serverless architecture. Our API endpoints
                                are built in .NET on Azure Functions, and handles all of the incoming requests. These requests,
                                should they be valid, are then forwarded on to AWS Lambda for PDF generation. AWS Lambda
                                is the serverless architecture that allows us to scale to millions of requests at very low
                                cost. The PDFs themselves are stored on Amazon S3.</p>
                            <p>When we began using this internally, OpenWater’s costs went from $1000 per month to $60 per month
                                and had no downtime whatsoever. We realized we built a solid product and decided to retool
                                it so that any developer out there can use it, and that’s why we launched Api2Pdf as its
                                own company.</p>
                            <p>Our Api2Pdf customers tend to find us for one of two reasons. First, just trying to get any of
                                the PDF generating libraries like wkhtmltopdf or Headless Chrome working in a cloud environment
                                can ruin your day. And second, PDF generation is quite CPU intensive, and if you need to
                                generate thousands of them, the costs to have a dedicated server soley for PDFs will skyrocket
                                as what happened to us.</p>
                            <p>The most common use-case is to convert HTML to PDF for the purpose of printing invoices, event
                                tickets, resumes, packing slips, etc, but we also provide endpoints for converting Microsoft
                                Office documents to PDF and merging multiple PDFs together. We have such a wide variety of
                                customers, ranging from online clothing stores to web design companies.</p>
                            <p>If you’re a new .NET startup, using Microsoft Azure as your cloud hosting environment is a no-brainer.
                                .NET Core is great, but it is also still very new and currently missing some key functionality.
                                We decided it was safe to use since our web portal is a small app and relatively low risk.
                                But the best advice I can give to new startups is that you just have to grind, day in, and
                                day out. Chart your path and avoid distractions. </p>
                            <p>Api2Pdf is growing rapidly. We have five team members that contribute, all .NET developers. We
                                are excited to make some noise is this oddly specific niche which is PDF generation. But
                                it has been a lot of fun and we are learning something new every day.
                                </p>
                        </span>

            </td>
        </tr>
        </tbody>
    </table>
    <hr/>
    <h4>Section III: Supplemental Materials</h4>

    <table class="table table-bordered table-condensed bg-gradient-danger">
        <tbody>
        <tr>
            <td>
                <h6>
                    <strong>Images</strong>
                </h6>
                <img src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%22200%22%20height%3D%22200%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20200%20200%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_1665080a485%20text%20%7B%20fill%3Argba(255%2C255%2C255%2C.75)%3Bfont-weight%3Anormal%3Bfont-family%3AHelvetica%2C%20monospace%3Bfont-size%3A10pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_1665080a485%22%3E%3Crect%20width%3D%22200%22%20height%3D%22200%22%20fill%3D%22%23777%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%2274.4296875%22%20y%3D%22104.5%22%3E200x200%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E" class="img-thumbnail">
                <img src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%22200%22%20height%3D%22200%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20200%20200%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_1665080a485%20text%20%7B%20fill%3Argba(255%2C255%2C255%2C.75)%3Bfont-weight%3Anormal%3Bfont-family%3AHelvetica%2C%20monospace%3Bfont-size%3A10pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_1665080a485%22%3E%3Crect%20width%3D%22200%22%20height%3D%22200%22%20fill%3D%22%23777%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%2274.4296875%22%20y%3D%22104.5%22%3E200x200%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E" class="img-thumbnail">
                <img src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%22200%22%20height%3D%22200%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20200%20200%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_1665080a485%20text%20%7B%20fill%3Argba(255%2C255%2C255%2C.75)%3Bfont-weight%3Anormal%3Bfont-family%3AHelvetica%2C%20monospace%3Bfont-size%3A10pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_1665080a485%22%3E%3Crect%20width%3D%22200%22%20height%3D%22200%22%20fill%3D%22%23777%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%2274.4296875%22%20y%3D%22104.5%22%3E200x200%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E" class="img-thumbnail">
                <img src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%22200%22%20height%3D%22200%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20200%20200%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_1665080a485%20text%20%7B%20fill%3Argba(255%2C255%2C255%2C.75)%3Bfont-weight%3Anormal%3Bfont-family%3AHelvetica%2C%20monospace%3Bfont-size%3A10pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_1665080a485%22%3E%3Crect%20width%3D%22200%22%20height%3D%22200%22%20fill%3D%22%23777%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%2274.4296875%22%20y%3D%22104.5%22%3E200x200%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E" class="img-thumbnail">
                <img src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%22200%22%20height%3D%22200%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20200%20200%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_1665080a485%20text%20%7B%20fill%3Argba(255%2C255%2C255%2C.75)%3Bfont-weight%3Anormal%3Bfont-family%3AHelvetica%2C%20monospace%3Bfont-size%3A10pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_1665080a485%22%3E%3Crect%20width%3D%22200%22%20height%3D%22200%22%20fill%3D%22%23777%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%2274.4296875%22%20y%3D%22104.5%22%3E200x200%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E" class="img-thumbnail">
                <img src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%22200%22%20height%3D%22200%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20200%20200%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_1665080a485%20text%20%7B%20fill%3Argba(255%2C255%2C255%2C.75)%3Bfont-weight%3Anormal%3Bfont-family%3AHelvetica%2C%20monospace%3Bfont-size%3A10pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_1665080a485%22%3E%3Crect%20width%3D%22200%22%20height%3D%22200%22%20fill%3D%22%23777%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%2274.4296875%22%20y%3D%22104.5%22%3E200x200%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E" class="img-thumbnail">
                <img src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%22200%22%20height%3D%22200%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20200%20200%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_1665080a485%20text%20%7B%20fill%3Argba(255%2C255%2C255%2C.75)%3Bfont-weight%3Anormal%3Bfont-family%3AHelvetica%2C%20monospace%3Bfont-size%3A10pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_1665080a485%22%3E%3Crect%20width%3D%22200%22%20height%3D%22200%22%20fill%3D%22%23777%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%2274.4296875%22%20y%3D%22104.5%22%3E200x200%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E" class="img-thumbnail">
                <img src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%22200%22%20height%3D%22200%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20200%20200%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_1665080a485%20text%20%7B%20fill%3Argba(255%2C255%2C255%2C.75)%3Bfont-weight%3Anormal%3Bfont-family%3AHelvetica%2C%20monospace%3Bfont-size%3A10pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_1665080a485%22%3E%3Crect%20width%3D%22200%22%20height%3D%22200%22%20fill%3D%22%23777%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%2274.4296875%22%20y%3D%22104.5%22%3E200x200%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E" class="img-thumbnail">
            </td>
        </tr>

        </tbody>
    </table>
</div>
<button class="btn btn-primary" class="html2PdfConverter" onclick="createPDF()">html to PDF </button>
<div class="container">
    <!-- <button class="btn btn-success" class="exportHTML" onclick="exportHTML()">html to WORD </button> -->
</div>
<!-- <div class="content-footer">
    <button id="btn-export" onclick="exportHTML();">Export to
        word doc</button>
</div>
<button onclick="Export2Doc('exportContent');">Export as .doc</button> -->
</body>
</html>
