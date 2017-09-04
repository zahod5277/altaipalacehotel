<?php

if (!isset($id)) {
    return '';
}
$pdo = $modx->getService('pdoTools');

//можно было лучше, но пойдет
$food = $modx->getObject('modTemplateVarResource', [
            'contentid' => $id,
            'tmplvarid' => 21
        ])->get('value');

$comfort = $modx->getObject('modTemplateVarResource', [
            'contentid' => $id,
            'tmplvarid' => 19
        ])->get('value');

$personal = $modx->getObject('modTemplateVarResource', [
            'contentid' => $id,
            'tmplvarid' => 20
        ])->get('value');

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
