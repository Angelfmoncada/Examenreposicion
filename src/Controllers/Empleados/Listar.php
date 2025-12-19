<?php

namespace Controllers\Empleados;

use Controllers\PublicController;

class Listar extends PublicController
{
    public function run(): void
    {
        $itemsPerPage = intval($_GET["itemsPerPage"] ?? 10);
        if ($itemsPerPage < 1) {
            $itemsPerPage = 10;
        }
        $pageNum = intval($_GET["pageNum"] ?? 1);
        if ($pageNum < 1) {
            $pageNum = 1;
        }
        $total = \Dao\Empleados::getCount();
        $empleados = \Dao\Empleados::getPage($pageNum, $itemsPerPage);
        $pagination = \Utilities\Paging::getPagination(
            $total,
            $itemsPerPage,
            $pageNum,
            "index.php?page=Empleados_Listar",
            "Empleados_Listar"
        );
        $viewData = array(
            "empleados" => $empleados,
            "pagination" => $pagination
        );
        \Views\Renderer::render("empleados/listar", $viewData);
    }
}

