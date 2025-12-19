<?php

namespace Controllers\Empleados;

use Controllers\PublicController;

class Ver extends PublicController
{
    public function run(): void
    {
        $empleado_id = intval($_GET["empleado_id"] ?? 0);
        if ($empleado_id > 0) {
            $empleado = \Dao\Empleados::getById($empleado_id);
            if ($empleado) {
                \Views\Renderer::render("empleados/ver", $empleado);
                return;
            }
        }
        \Utilities\Site::redirectTo("index.php?page=Empleados_Listar");
    }
}

