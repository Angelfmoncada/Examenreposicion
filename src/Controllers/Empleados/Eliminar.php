<?php

namespace Controllers\Empleados;

use Controllers\PublicController;

class Eliminar extends PublicController
{
    public function run(): void
    {
        $empleado_id = intval($_GET["empleado_id"] ?? 0);
        if ($empleado_id > 0) {
            \Dao\Empleados::deleteEmpleado($empleado_id);
        }
        \Utilities\Site::redirectTo("index.php?page=Empleados_Listar");
    }
}

