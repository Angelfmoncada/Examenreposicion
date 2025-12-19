<section>
  <h2>Detalle de Empleado</h2>
  <div class="form_row"><strong>Id:</strong> {{empleado_id}}</div>
  <div class="form_row"><strong>Nombre:</strong> {{nombre}}</div>
  <div class="form_row"><strong>Puesto:</strong> {{puesto}}</div>
  <div class="form_row"><strong>Salario:</strong> {{salario}}</div>
  <div class="form_row"><strong>Activo:</strong> {{activo}}</div>
  <div class="form_row">
    <a href="index.php?page=Empleados_Listar">Regresar</a>
    <a href="index.php?page=Empleados_Editar&empleado_id={{empleado_id}}">Editar</a>
    <a href="index.php?page=Empleados_Eliminar&empleado_id={{empleado_id}}">Eliminar</a>
  </div>
</section>

