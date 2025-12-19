<section>
  <div align="center">
  <h2>Editar Empleado</h2>
  {{if generalError}}
    <div>{{generalError}}</div>
  {{endif generalError}}
  <form action="index.php?page=Empleados_Editar" method="POST">
    <input type="hidden" name="empleado_id" value="{{empleado_id}}" />
    <fieldset>
      <table border="0" cellpadding="6" cellspacing="0">
        <tr>
          <td><label for="nombre">Nombre</label></td>
          <td>
            <input type="text" id="nombre" name="nombre" value="{{nombre}}" />
            {{if errorNombre}}<small>{{errorNombre}}</small>{{endif errorNombre}}
          </td>
        </tr>
        <tr>
          <td><label for="puesto">Puesto</label></td>
          <td>
            <input type="text" id="puesto" name="puesto" value="{{puesto}}" />
            {{if errorPuesto}}<small>{{errorPuesto}}</small>{{endif errorPuesto}}
          </td>
        </tr>
        <tr>
          <td><label for="salario">Salario</label></td>
          <td>
            <input type="number" step="0.01" id="salario" name="salario" value="{{salario}}" />
            {{if errorSalario}}<small>{{errorSalario}}</small>{{endif errorSalario}}
          </td>
        </tr>
        <tr>
          <td><label for="activo">Activo</label></td>
          <td><input type="checkbox" id="activo" name="activo" {{if activo}}checked{{endif activo}} /></td>
        </tr>
        <tr>
          <td colspan="2" align="right">
            <button type="submit">Actualizar</button>
            <a href="index.php?page=Empleados_Listar">Cancelar</a>
          </td>
        </tr>
      </table>
    </fieldset>
  </form>
  </div>
</section>
