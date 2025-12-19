<section>
  <div align="center">
  <h2>Empleados</h2>
  <fieldset>
    <a href="index.php?page=Empleados_Crear" aria-label="Crear empleado">
      <i class="fas fa-user-plus" aria-hidden="true"></i>&nbsp;Crear empleado
    </a>
  </fieldset>
  <table border="1" cellpadding="6" cellspacing="0" width="80%">
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
          <a href="index.php?page=Empleados_Ver&empleado_id={{empleado_id}}" aria-label="Ver empleado {{empleado_id}}">
            <i class="fas fa-eye" aria-hidden="true"></i>&nbsp;Ver
          </a>
          <a href="index.php?page=Empleados_Editar&empleado_id={{empleado_id}}" aria-label="Editar empleado {{empleado_id}}">
            <i class="fas fa-edit" aria-hidden="true"></i>&nbsp;Editar
          </a>
          <a href="index.php?page=Empleados_Eliminar&empleado_id={{empleado_id}}" aria-label="Eliminar empleado {{empleado_id}}">
            <i class="fas fa-trash" aria-hidden="true"></i>&nbsp;Eliminar
          </a>
        </td>
      </tr>
      {{endfor empleados}}
    </tbody>
  </table>
  {{{pagination}}}
  </div>
</section>
