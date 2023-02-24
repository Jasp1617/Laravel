<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Editar</title>
</head>
<body>
    <p>editar</p>
    <form action="{{ url('/empleado/'.$empleado->id)}}" method="post" enctype="multipart/form-data">
@csrf
{{ method_field('PATCH') }}
@include('empleado.form');

</form>
</body>
</html>
