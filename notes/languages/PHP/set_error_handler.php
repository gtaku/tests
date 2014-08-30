<?php

set_error_handler(function($no, $msg, $file, $line) {
    throw new ErrorException($msg, 0, $no, $file, $line);
});

