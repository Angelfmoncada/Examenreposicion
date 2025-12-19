<section>
  <h2>Crear Empleado</h2>
  {{if generalError}}
    <div class="error">{{generalError}}</div>
  {{endif generalError}}
  <form action="index.php?page=Empleados_Crear" method="POST">
    <div class="form_row">
      <label for="nombre">Nombre</label>
      <input type="text" id="nombre" name="nombre" value="{{nombre}}" />
      {{if errorNombre}}<span class="error">{{errorNombre}}</span>{{endif errorNombre}}
    </div>
    <div class="form_row">
      <label for="puesto">Puesto</label>
      <input type="text" id="puesto" name="puesto" value="{{puesto}}" />
      {{if errorPuesto}}<span class="error">{{errorPuesto}}</span>{{endif errorPuesto}}
    </div>
    <div class="form_row">
      <label for="salario">Salario</label>
      <input type="number" step="0.01" id="salario" name="salario" value="{{salario}}" />
      {{if errorSalario}}<span class="error">{{errorSalario}}</span>{{endif errorSalario}}
    </div>
    <div class="form_row">
      <label for="activo">Activo</label>
      <input type="checkbox" id="activo" name="activo" {{if activo}}checked{{endif activo}} />
    </div>
    <div class="form_row">
      <button type="submit">Guardar</button>
      <a href="index.php?page=Empleados_Listar">Cancelar</a>
    </div>
  </form>
</section>

