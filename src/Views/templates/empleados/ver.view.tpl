<section>
  <div align="center">
  <h2>Detalle de Empleado</h2>
  <table border="1" cellpadding="6" cellspacing="0" width="60%">
    <tr><td><strong>Id</strong></td><td>{{empleado_id}}</td></tr>
    <tr><td><strong>Nombre</strong></td><td>{{nombre}}</td></tr>
    <tr><td><strong>Puesto</strong></td><td>{{puesto}}</td></tr>
    <tr><td><strong>Salario</strong></td><td>{{salario}}</td></tr>
    <tr><td><strong>Activo</strong></td><td>{{activo}}</td></tr>
  </table>
  <fieldset>
    <a href="index.php?page=Empleados_Listar">Regresar</a>
    <a href="index.php?page=Empleados_Editar&empleado_id={{empleado_id}}">Editar</a>
    <a href="index.php?page=Empleados_Eliminar&empleado_id={{empleado_id}}">Eliminar</a>
  </fieldset>
  </div>
</section>
