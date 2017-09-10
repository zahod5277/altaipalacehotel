<?php

if (!isset($id)) {
    return '';
}
$pdo = $modx->getService('pdoTools');

//можно было лучше, но пойдет
if (!$page = $modx->getObject('modResource', $id)){
    return;
};
$food = $page->getTVValue('starFood');
$comfort = $page->getTVValue('starComfort');
$personal = $page->getTVValue('starPersonal');

$summ = floatval($food) + floatval($comfort) + floatval($personal);
$average = round($summ / 3);
$mod = round((($summ) / 3) - bcdiv($summ, 3), 1);
if ($mode == 'chunk') {
    $output = $pdo->getChunk($tpl, [
        'average' => $average
    ]);
} else {
    $output = $average + $mod;
}
return $output;
