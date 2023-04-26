<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>

    <link href="{{ asset('./css/app.css') }}" rel="stylesheet" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.1/html2pdf.bundle.min.js"></script>
    <style>
        .newlineStringStyle {
            white-space: pre-wrap;
            font-size: 11px;
        }
        * {
            box-sizing: border-box;
            word-wrap: break-word;
            overflow-wrap: break-word;
        }
 /*       .box {
            inline-size: 100%;
            overflow-wrap: break-word;
            hyphens: manual;
            text-align: justify;
        }*/
    </style>
</head>
<body>

<div id="pdfElements">

    <div class="box">
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consectetur dicta dolorum ex laboriosam non odit placeat quos reprehenderit sed temporibus. Accusamus aut blanditiis cumque deserunt dolor ea et ex facere id impedit, laboriosam maiores molestias natus neque nesciunt officiis placeat porro quam quas quasi quis quisquam reprehenderit tempora tenetur velit vitae voluptates. Adipisci aliquid aspernatur at aut beatae corporis cumque dicta dolore dolorum eaque, est expedita fugiat iste iure iusto laudantium maiores minus molestiae nihil omnis placeat porro quasi quia quisquam quod reprehenderit sed suscipit tempore, ullam voluptatum. Adipisci aut distinctio dolores eum iste laborum similique, vitae? Aliquam assumenda atque beatae corporis cupiditate dignissimos enim explicabo harum iure, labore magni maiores nam nostrum nulla optio porro, praesentium quaerat quidem quisquam rem rerum saepe sapiente sed sunt totam unde, voluptatum. Culpa labore nesciunt sit. Ab, aperiam cupiditate laudantium non nulla officia sit soluta suscipit ut voluptate, voluptates voluptatibus. Doloribus eum ex iure quibusdam reiciendis ullam ut veniam! A ab assumenda blanditiis consectetur consequuntur dolore eos error facere impedit ipsa iure molestiae nemo officiis optio, sequi sit ullam unde! Delectus dolorum earum perferendis recusandae voluptas? Aliquam autem consequuntur, eum fugiat fugit laborum maxime numquam officiis possimus recusandae repudiandae sit tempora tempore unde veniam voluptates voluptatibus? Beatae commodi dicta enim esse et fugiat magnam nulla perspiciatis qui quibusdam. Dignissimos dolore ex fuga harum inventore neque recusandae, sit ut voluptate voluptatibus! Aliquam cum cumque eveniet fugiat itaque minus neque optio pariatur quisquam sed. Autem culpa eum exercitationem illum minima nam suscipit tenetur ullam? Accusantium adipisci alias, animi asperiores assumenda at aut consequatur culpa cupiditate distinctio dolore doloremque esse est eveniet exercitationem facere fugiat, id inventore laudantium magni nihil nostrum omnis perferendis quam rem repellendus sapiente tempora ullam vitae voluptates? A animi at esse fugiat perspiciatis porro qui quis similique suscipit unde! Debitis fuga neque quam rem suscipit tempore ullam velit. Ex illum laborum modi nesciunt nulla tempora voluptatum. Cum dolore illo modi nisi pariatur perspiciatis quae sunt tempora voluptates. A blanditiis, consequuntur eos in maiores nam qui? Debitis doloribus esse fugit id illo minima minus modi porro quidem ut! In minus pariatur quia, quisquam quod ratione recusandae rem suscipit? At eaque eligendi error fugit hic mollitia perferendis porro sapiente tempora voluptate. Ad animi architecto, cum cupiditate dolor eum eveniet fugiat fugit labore nisi porro, quisquam recusandae voluptas! Ab dolores error fugiat impedit laboriosam, nam nulla reiciendis unde velit veniam. Alias aliquid culpa fugit illo, illum laudantium officia officiis perferendis quas repellendus reprehenderit tenetur totam voluptates. Ad alias aperiam assumenda culpa deserunt dicta dolore ducimus earum eius error excepturi explicabo facere facilis fugiat impedit incidunt ipsa itaque iusto laboriosam maiores modi nam nemo nihil, nobis pariatur perferendis praesentium quidem quo quod recusandae repellendus repudiandae suscipit totam unde vero voluptatibus voluptatum! Accusamus aut earum exercitationem libero maiores, minus mollitia nam nobis optio possimus praesentium provident quae quasi qui quo quod quos suscipit unde ut vel? Dicta minus sunt voluptatem! Ad beatae facilis perferendis voluptas! Aliquid, id, quidem! Consectetur dignissimos dolores esse libero nobis quaerat quos ratione!</p>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consectetur dicta dolorum ex laboriosam non odit placeat quos reprehenderit sed temporibus. Accusamus aut blanditiis cumque deserunt dolor ea et ex facere id impedit, laboriosam maiores molestias natus neque nesciunt officiis placeat porro quam quas quasi quis quisquam reprehenderit tempora tenetur velit vitae voluptates. Adipisci aliquid aspernatur at aut beatae corporis cumque dicta dolore dolorum eaque, est expedita fugiat iste iure iusto laudantium maiores minus molestiae nihil omnis placeat porro quasi quia quisquam quod reprehenderit sed suscipit tempore, ullam voluptatum. Adipisci aut distinctio dolores eum iste laborum similique, vitae? Aliquam assumenda atque beatae corporis cupiditate dignissimos enim explicabo harum iure, labore magni maiores nam nostrum nulla optio porro, praesentium quaerat quidem quisquam rem rerum saepe sapiente sed sunt totam unde, voluptatum. Culpa labore nesciunt sit. Ab, aperiam cupiditate laudantium non nulla officia sit soluta suscipit ut voluptate, voluptates voluptatibus. Doloribus eum ex iure quibusdam reiciendis ullam ut veniam! A ab assumenda blanditiis consectetur consequuntur dolore eos error facere impedit ipsa iure molestiae nemo officiis optio, sequi sit ullam unde! Delectus dolorum earum perferendis recusandae voluptas? Aliquam autem consequuntur, eum fugiat fugit laborum maxime numquam officiis possimus recusandae repudiandae sit tempora tempore unde veniam voluptates voluptatibus? Beatae commodi dicta enim esse et fugiat magnam nulla perspiciatis qui quibusdam. Dignissimos dolore ex fuga harum inventore neque recusandae, sit ut voluptate voluptatibus! Aliquam cum cumque eveniet fugiat itaque minus neque optio pariatur quisquam sed. Autem culpa eum exercitationem illum minima nam suscipit tenetur ullam? Accusantium adipisci alias, animi asperiores assumenda at aut consequatur culpa cupiditate distinctio dolore doloremque esse est eveniet exercitationem facere fugiat, id inventore laudantium magni nihil nostrum omnis perferendis quam rem repellendus sapiente tempora ullam vitae voluptates? A animi at esse fugiat perspiciatis porro qui quis similique suscipit unde! Debitis fuga neque quam rem suscipit tempore ullam velit. Ex illum laborum modi nesciunt nulla tempora voluptatum. Cum dolore illo modi nisi pariatur perspiciatis quae sunt tempora voluptates. A blanditiis, consequuntur eos in maiores nam qui? Debitis doloribus esse fugit id illo minima minus modi porro quidem ut! In minus pariatur quia, quisquam quod ratione recusandae rem suscipit? At eaque eligendi error fugit hic mollitia perferendis porro sapiente tempora voluptate. Ad animi architecto, cum cupiditate dolor eum eveniet fugiat fugit labore nisi porro, quisquam recusandae voluptas! Ab dolores error fugiat impedit laboriosam, nam nulla reiciendis unde velit veniam. Alias aliquid culpa fugit illo, illum laudantium officia officiis perferendis quas repellendus reprehenderit tenetur totam voluptates. Ad alias aperiam assumenda culpa deserunt dicta dolore ducimus earum eius error excepturi explicabo facere facilis fugiat impedit incidunt ipsa itaque iusto laboriosam maiores modi nam nemo nihil, nobis pariatur perferendis praesentium quidem quo quod recusandae repellendus repudiandae suscipit totam unde vero voluptatibus voluptatum! Accusamus aut earum exercitationem libero maiores, minus mollitia nam nobis optio possimus praesentium provident quae quasi qui quo quod quos suscipit unde ut vel? Dicta minus sunt voluptatem! Ad beatae facilis perferendis voluptas! Aliquid, id, quidem! Consectetur dignissimos dolores esse libero nobis quaerat quos ratione!</p>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consectetur dicta dolorum ex laboriosam non odit placeat quos reprehenderit sed temporibus. Accusamus aut blanditiis cumque deserunt dolor ea et ex facere id impedit, laboriosam maiores molestias natus neque nesciunt officiis placeat porro quam quas quasi quis quisquam reprehenderit tempora tenetur velit vitae voluptates. Adipisci aliquid aspernatur at aut beatae corporis cumque dicta dolore dolorum eaque, est expedita fugiat iste iure iusto laudantium maiores minus molestiae nihil omnis placeat porro quasi quia quisquam quod reprehenderit sed suscipit tempore, ullam voluptatum. Adipisci aut distinctio dolores eum iste laborum similique, vitae? Aliquam assumenda atque beatae corporis cupiditate dignissimos enim explicabo harum iure, labore magni maiores nam nostrum nulla optio porro, praesentium quaerat quidem quisquam rem rerum saepe sapiente sed sunt totam unde, voluptatum. Culpa labore nesciunt sit. Ab, aperiam cupiditate laudantium non nulla officia sit soluta suscipit ut voluptate, voluptates voluptatibus. Doloribus eum ex iure quibusdam reiciendis ullam ut veniam! A ab assumenda blanditiis consectetur consequuntur dolore eos error facere impedit ipsa iure molestiae nemo officiis optio, sequi sit ullam unde! Delectus dolorum earum perferendis recusandae voluptas? Aliquam autem consequuntur, eum fugiat fugit laborum maxime numquam officiis possimus recusandae repudiandae sit tempora tempore unde veniam voluptates voluptatibus? Beatae commodi dicta enim esse et fugiat magnam nulla perspiciatis qui quibusdam. Dignissimos dolore ex fuga harum inventore neque recusandae, sit ut voluptate voluptatibus! Aliquam cum cumque eveniet fugiat itaque minus neque optio pariatur quisquam sed. Autem culpa eum exercitationem illum minima nam suscipit tenetur ullam? Accusantium adipisci alias, animi asperiores assumenda at aut consequatur culpa cupiditate distinctio dolore doloremque esse est eveniet exercitationem facere fugiat, id inventore laudantium magni nihil nostrum omnis perferendis quam rem repellendus sapiente tempora ullam vitae voluptates? A animi at esse fugiat perspiciatis porro qui quis similique suscipit unde! Debitis fuga neque quam rem suscipit tempore ullam velit. Ex illum laborum modi nesciunt nulla tempora voluptatum. Cum dolore illo modi nisi pariatur perspiciatis quae sunt tempora voluptates. A blanditiis, consequuntur eos in maiores nam qui? Debitis doloribus esse fugit id illo minima minus modi porro quidem ut! In minus pariatur quia, quisquam quod ratione recusandae rem suscipit? At eaque eligendi error fugit hic mollitia perferendis porro sapiente tempora voluptate. Ad animi architecto, cum cupiditate dolor eum eveniet fugiat fugit labore nisi porro, quisquam recusandae voluptas! Ab dolores error fugiat impedit laboriosam, nam nulla reiciendis unde velit veniam. Alias aliquid culpa fugit illo, illum laudantium officia officiis perferendis quas repellendus reprehenderit tenetur totam voluptates. Ad alias aperiam assumenda culpa deserunt dicta dolore ducimus earum eius error excepturi explicabo facere facilis fugiat impedit incidunt ipsa itaque iusto laboriosam maiores modi nam nemo nihil, nobis pariatur perferendis praesentium quidem quo quod recusandae repellendus repudiandae suscipit totam unde vero voluptatibus voluptatum! Accusamus aut earum exercitationem libero maiores, minus mollitia nam nobis optio possimus praesentium provident quae quasi qui quo quod quos suscipit unde ut vel? Dicta minus sunt voluptatem! Ad beatae facilis perferendis voluptas! Aliquid, id, quidem! Consectetur dignissimos dolores esse libero nobis quaerat quos ratione!</p>
    </div>


    <div class="html2pdf__page-break">

    </div>
    <div>
        my page 2
    </div>

</div>


<button class="btn btn-primary html2PdfConverter" onclick="createPDF()">html to PDF </button>

<script>



    const pdfOptions = {
        margin: [10, 10, 10, 0], // Set the margins to 10mm on each side
        filename: 'my_document.pdf', // Set the filename for the PDF
        image: { type: 'jpeg', quality: .100 }, // Set the image quality to 98%
        html2canvas: { scale: 2 }, // Scale the HTML content by a factor of 2 for better resolution
        jsPDF: { unit: 'mm', format: 'b4', orientation: 'portrait' } // Set the PDF unit to millimeters, the format to A4, and the orientation to portrait
    };



    function createPDF() {
        const element = document.getElementById("pdfElements");
        // html2pdf(element);
        html2pdf().set(pdfOptions).from(element).save();
    };
</script>

</body>
</html>
