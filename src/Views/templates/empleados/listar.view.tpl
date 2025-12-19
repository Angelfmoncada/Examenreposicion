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
      </tr>
      {{endfor empleados}}
    </tbody>
  </table>
  {{{pagination}}}
</section>

