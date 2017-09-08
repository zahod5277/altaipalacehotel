<?php

$pdo = $modx->getService('pdoTools');
//часть кода со сниппета getImageList для фильтрации по параметру where
//самому мне JSON фильтровать как-то впадлу
$migx = $modx->getService('migx', 'Migx', $modx->getOption('migx.core_path', null, $modx->getOption('core_path') . 'components/migx/') . 'model/migx/', $scriptProperties);
if (!($migx instanceof Migx))
    return '';
$migx->working_context = isset($modx->resource) ? $modx->resource->get('context_key') : 'web';
$where = '{"MIGX_id":"' . $option . '"}';
$where = !empty($where) ? $modx->fromJSON($where) : array();
$tv = $modx->getObject('modTemplateVar', array('name' => 'funItems'));
if (empty($outputvalue)) {
    $outputvalue = $tv->renderOutput($docid);
    if (empty($outputvalue) && !empty($inheritFrom)) {
        foreach ($inheritFrom as $from) {
            if ($from == 'parents') {
                $outputvalue = $tv->processInheritBinding('', $docid);
            } else {
                $outputvalue = $tv->renderOutput($from);
            }
            if (!empty($outputvalue)) {
                break;
            }
        }
    }
}
$items = $modx->fromJSON($outputvalue);
$items = $migx->filterItems($where, $items);

$res = $items;
return $res;
