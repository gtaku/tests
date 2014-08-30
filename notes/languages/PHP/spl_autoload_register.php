<?php

spl_autoload_register(function ($class) {
    $path = preg_replace('{\\\\}', '/', $class);
    $path = preg_replace('{\\A/}', '', $path) . '.php';
    include $path;
});

