<?php

$pdo = $modx->getService('pdoTools');
$data = json_decode($json);
$half = round(count($data) / 2);
$output = '';
$wrapper = '';
$i = 0;
while ($i <= (count($data) - 1)) {
    if ($i == $half) {
        $output .= $pdo->getChunk($tplOuter, [
            'items' => $wrapper
        ]);
        $wrapper = '';
    }
    $wrapper .= $pdo->getChunk($tpl, [
        'title' => $data[$i]->title,
        'price' => $data[$i]->price,
        'compos' => $data[$i]->compos,
        'weight' => $data[$i]->weight
    ]);
    $i++;
}


$output .= $pdo->getChunk($tplOuter, [
    'items' => $wrapper
        ]);

return $output;
