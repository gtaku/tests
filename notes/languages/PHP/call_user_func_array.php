<?php
class X
{
    public function sum($a, $b, $c)
    {
        return $a + $b + $c;
    }
}

$x = new X;
$nums = array(1, 4, 3);
echo call_user_func_array(array($x, 'sum'), $nums), PHP_EOL; // 8

