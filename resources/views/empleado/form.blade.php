<p>formulario creacion empleado</p>

<form action="{{ url('/empleado')}}" method="post" enctype="multipart/form-data">
@csrf 
<label for="Nombre"> Nombre</label>
<input type="text" name="Nombre" value="{{$empleado->Nombre}}" id="Nombre">
<br>

<label for="ApellidoPaterno"> Apellido Paterno</label>
<input type="text" name="Apellido" value="{{$empleado->Apellido}}" id="Apellido" >
<br>

<label for="Correo"> Sexo</label>
<input type="text" name="Sexo" value="{{$empleado->Sexo}}" id="Sexo" >
<br>
<label for="Correo">Correo</label>
<input type="text" name="Correo" value="{{$empleado->Correo}}" id="Correo">
<br>

<label for="Foto">Foto</label>
{{$empleado->Foto}}
<input type="file" name="Foto" value="" id="Foto">
<br>

<input type="submit" value="Guardar Datos">
<br>
</form>