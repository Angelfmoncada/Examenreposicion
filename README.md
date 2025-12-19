# Simple PHP MVC Orientado a Objetos

Número de cuenta: 0826200400114
Asignatura: Negocios Web 2001

Simple PHP MVC OOP es un framework básico y sencillo de MVC diseñado para PHP 7.4 y versiones posteriores. Fue desarrollado a lo largo de varios períodos académicos en el contexto de la asignatura de Desarrollo de Negocios Web. El propósito de este framework es proporcionar una base para la creación de aplicaciones web en PHP, haciendo uso del patrón de diseño Modelo-Vista-Controlador (MVC) y la programación orientada a objetos (OOP). Esto brinda la oportunidad a los estudiantes de comprender cada uno de los componentes del MVC y cómo interactúan entre sí. El diseño se encuentra en un nivel de abstracción muy elemental, lo que permite adquirir los fundamentos y comprender cómo operan los componentes de un MVC, facilitando su comprensión y aplicabilidad en otros frameworks MVC.

## Estructura de archivos usados para correr el proyecto

```
Examenreposicion/
├── index.php
├── parameters.env
├── composer.json
├── nav.config.json
├── docker-compose.yml
├── Dockerfile
├── docs/
│   └── scripts/
│       └── empleados.sql
└── src/
    ├── Utilities/
    │   ├── Site.php
    │   ├── Context.php
    │   └── DotEnv.php
    ├── Dao/
    │   ├── Dao.php
    │   ├── Table.php
    │   └── Empleados.php
    ├── Controllers/
    │   ├── Index.php
    │   ├── PublicController.php
    │   └── Empleados/
    │       ├── Listar.php
    │       ├── Crear.php
    │       ├── Editar.php
    │       ├── Ver.php
    │       └── Eliminar.php
    └── Views/
        ├── Renderer.php
        └── templates/
            ├── layout.view.tpl
            ├── privatelayout.view.tpl
            ├── index.view.tpl
            ├── utilities/
            │   └── pagination.view.tpl
            └── empleados/
                ├── listar.view.tpl
                ├── crear.view.tpl
                ├── editar.view.tpl
                └── ver.view.tpl
```
