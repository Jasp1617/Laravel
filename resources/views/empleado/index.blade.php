<table class="table table-light">
    <thead class="thead-light">
        <tr>
            <th>#</th>
            <th>Foto</th>
            <th>Nombre</th>
            <th>Apellido</th>
            <th>Sexo</th>
            <th>Correo</th>
            <th>Acciones</th>
        </tr>
    </thead>
    <tbody>
        @foreach ($empleados as $empleado)
        <tr>
            <td>{{ $empleado->id}}</td>
            <td>{{ $empleado->Foto}}</td>
            <td>{{ $empleado->Nombre}}</td>
            <td>{{ $empleado->Apellido}}</td>
            <td>{{ $empleado->Sexo}}</td>
            <td>{{ $empleado->Correo}}</td>
            <td>
                <a href="{{url('/empleado/'.$empleado->id.'/edit')}}"> Editar | </a>    

            <form action="{{ url('/empleado/'.$empleado->id)}}" method="post">
                @csrf
                {{ method_field('DELETE') }}
                <input type="submit" onclick="return confirm('quieres borrar?')"
                value="Borrar"> 
                </form>
            </td>

            </td>

        </tr>
        @endforeach;
    </tbod
