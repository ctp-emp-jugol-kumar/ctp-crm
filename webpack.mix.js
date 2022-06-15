const mix = require("laravel-mix");

/*
 |--------------------------------------------------------------------------
 | Mix Asset Management
 |--------------------------------------------------------------------------
 |
 | Mix provides a clean, fluent API for defining some Webpack build steps
 | for your Laravel applications. By default, we are compiling the CSS
 | file for the application as well as bundling up all the JS files.
 |
 */
//
// <script src="../../../app-assets/vendors/js/pickers/pickadate/picker.js"></script>
//     <script src="../../../app-assets/vendors/js/pickers/pickadate/picker.date.js"></script>
//     <script src="../../../app-assets/vendors/js/pickers/pickadate/picker.time.js"></script>
//     <script src="../../../app-assets/vendors/js/pickers/pickadate/legacy.js"></script>
//     <script src="../../../app-assets/vendors/js/pickers/flatpickr/flatpickr.min.js"></script>


mix.js("resources/js/app.js", "public/js")

    .js("resources/js/pickers/pickadate/picker.js", "public/js")
    .js("resources/js/pickers/pickadate/legacy.js", "public/js")
    .js("resources/js/pickers/pickadate/picker.date.js", "public/js")
    .js("resources/js/pickers/pickadate/picker.time.js", "public/js")
    .js("resources/js/pickers/flatpickr/flatpickr.min.js", "public/js")
    .js("resources/js/pickers/form-pickers.js", "public/js")

    .vue(3)
    .sass("resources/sass/app.scss", "public/css");

mix.webpackConfig({
    output: {
        chunkFilename: "js/[name].js?id=[chunkhash]",
    },
    stats: {
        children: false
   }
});
