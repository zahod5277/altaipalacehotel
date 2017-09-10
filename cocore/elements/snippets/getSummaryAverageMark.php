<?php

$pdo = $modx->getService('pdoTools');
$pages = $modx->getIterator('modResource', [
    'parent' => 7,
    'template:=' => 12,
    'published:=' => 1
        ]);
$i = 0;

foreach ($pages as $page) {
    //можно было лучше, но пойдет
    $id = $page->get('id');
    
    $summ += $pdo->runSnippet('@FILE:snippets/getGuestAverageMark.php', [
        'id' => $id
    ]);
    
    $comfortSumm += !empty($page->getTVValue('starComfort')) ? $page->getTVValue('starComfort') : 3;
    $personalSumm += !empty($page->getTVValue('starPersonal')) ? $page->getTVValue('starPersonal') : 3;
    $foodSumm += !empty($page->getTVValue('starFood')) ? $page->getTVValue('starFood') : 3;
    $recommPercent += !empty($page->getTVValue('iRecommended')) ? $page->getTVValue('iRecommended') : 0;
    $i++;
}
$recommPercent = round(($recommPercent * 100) / $i);
$average = round($summ / $i, 1);
$summary = [
    'comfort' => round($comfortSumm / $i, 1),
    'food' => round($foodSumm / $i, 1),
    'personal' => round($personalSumm / $i, 1)
];
//определяем, есть ли 0.5 значения. Выводить половинку только для 0,5 глупо, поэтому
//возьмем в выборку 0,4 и 0,6, чтобы
//было честнее и нагляднее
foreach ($summary as $key => $summ) {
    $half = 0;
    $mod = (int) (abs(floor($summ) - $summ) * 10);
    if (($mod == 4) || ($mod == 5) || ($mod == 6)) {
        $half = 1;
    }
    $summary[$key] = floor($summ);
    $summ = (int)$summ;
    $marks = '';
    //немного все же добавим голой html разметки, ну а хуле. Я не знаю, как это 
    //грамотно сделать
    for ($i = 1; $i <= 5; $i++) {
        if ($i <= $summ){
            $marks .= '<div class="b-rating__item"></div>'; 
        }
        if (($i == $summ)&&($half == 1)){
            $marks .= '<div class="b-rating__item b-rating__item_half"></div>';
        }
        if ($i > $summ){
            $marks .= '<div class="b-rating__item b-rating__item_empty"></div>';
        }
    }
    $outputMarks[$key] .= $marks;
}
return $pdo->getChunk($tpl, [
            'average' => $average,
            'absAverage' => round($average),
            'recommPercent' => $recommPercent,
            'comfort' => $summary['comfort'],
            'food' => $summary['food'],
            'personal' => $summary['personal'],
            'marks' => $outputMarks
        ]);