<?php

$regex_pattern = "/^(...\.){3}...$/"; //Do not delete '/'. Replace __________ with your regex.

$handle = fopen ("php://stdin","r");
$test_string = fgets($handle);
$match = preg_match($regex_pattern, $test_string);

$outputs = array('false', 'true');
printf($outputs[$match]);
fclose($handle);
?>