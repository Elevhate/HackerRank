<?php

/*
 * Complete the 'plusMinus' function below.
 *
 * The function accepts INTEGER_ARRAY arr as parameter.
 */

function plusMinus($arr) {
    
    $pos = 0;
    $neg = 0;
    $zero = 0;
    $size = count($arr);
    
    foreach ($arr as $value) {
        if ($value > 0) {
            $pos++;
        } elseif ($value < 0) {
            $neg++;
        } else {
            $zero++;
        }
    }

    print(number_format($pos / $size, 6) . PHP_EOL);
    print(number_format($neg / $size, 6) . PHP_EOL);
    print(number_format($zero / $size, 6) . PHP_EOL);
}

$n = intval(trim(fgets(STDIN)));

$arr_temp = rtrim(fgets(STDIN));

$arr = array_map('intval', preg_split('/ /', $arr_temp, -1, PREG_SPLIT_NO_EMPTY));

plusMinus($arr);
