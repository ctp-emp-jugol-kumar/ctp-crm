<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
    <link href="{{ mix('/css/app.css') }}" rel="stylesheet" />

    <script src="{{ mix('/js/app.js') }}" defer></script>
      <script src="{{ asset("/js/vendors.min.js") }}"></script>
    @inertiaHead
  </head>
  <body>
     <div id="app" class="h-100" data-page="{{ json_encode($page) }}"></div>
  </body>
</html>
