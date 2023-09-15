<!-- PHP VERSION -->
<?php

function getAverage() {
    $args = func_get_args();
    if (empty($args)) {
        return 0;
    }
    $sum = array_sum($args);
    $count = count($args);
    return $sum / $count;
}

echo getAverage(3, 6);
echo getAverage(2, 4, 4, 5, 6, 8, 10);
echo getAverage();

?>