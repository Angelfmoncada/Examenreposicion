<section>
  <h2>Empleados</h2>
  <table class="table">
    <thead>
      <tr>
        <th>Id</th>
        <th>Nombre</th>
        <th>Puesto</th>
        <th>Salario</th>
        <th>Activo</th>
        <th>Acciones</th>
      </tr>
    </thead>
    <tbody>
      {{foreach empleados}}
      <tr>
        <td>{{empleado_id}}</td>
        <td>{{nombre}}</td>
        <td>{{puesto}}</td>
        <td>{{salario}}</td>
        <td>{{activo}}</td>
        <td>
          <a href="index.php?page=Empleados_Ver&empleado_id={{empleado_id}}">Ver</a>
          <a href="index.php?page=Empleados_Editar&empleado_id={{empleado_id}}">Editar</a>
          <a href="index.php?page=Empleados_Eliminar&empleado_id={{empleado_id}}">Eliminar</a>
        </td>
      </tr>
      {{endfor empleados}}
    </tbody>
  </table>
  {{{pagination}}}
</section>
