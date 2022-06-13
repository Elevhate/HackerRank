<?php

/*
 * Complete the 'staircase' function below.
 *
 * The function accepts INTEGER n as parameter.
 */

function staircase($n) {
    for ($i = 1; $i <= $n; $i++) {
        print(str_repeat(" ", $n-$i) . str_repeat("#", $i) . "\n");
    }

}

$n = intval(trim(fgets(STDIN)));

staircase($n);
