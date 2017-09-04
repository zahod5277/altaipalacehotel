<?php

$pdo = $modx->getService('pdoTools');

$pages = $modx->getIterator('modResource', [
    'parent' => 7,
    'template:=' => 12
        ]);
$i = 0;

foreach ($pages as $page) {
    //можно было лучше, но пойдет
    $id = $page->get('id');
    $summ += $pdo->runSnippet('@FILE:snippets/getGuestAverageMark.php',[
        'id' => $id
    ]);
    
    $comfortSumm += $page->getTVValue('starComfort');
    $foodSumm += $page->getTVValue('starFood');
    $personalSumm += $page->getTVValue('starPersonal');
    $recommPercent += $page->getTVValue('iRecommended');
    $i++;
}
$recommPercent = round(($recommPercent * 100) / $i);
$average = round($summ/$i,1);

//'comfort' => round($comfortSumm / $i,1),
//'food' => round($foodSumm / $i, 1),
//'personal' => round($personalSumm / $i, 1)
//продумать с половинками
return $pdo->getChunk($tpl,[
    'average' => $average,
    'recommPercent' => $recommPercent
]);
