<?php

$mod = 'Foo/Bar.php';
$path = stream_resolve_include_path($mod);
if ($path === false) {
    throw new Exception('No such file: ' . $mod);
} else {
    include $mod;
}

