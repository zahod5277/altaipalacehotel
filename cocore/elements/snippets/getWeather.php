<?php
/** @var Weather $Weather */
$Weather = $modx->getService('Weather', 'Weather', MODX_CORE_PATH . 'components/weather/');
$pdo = $modx->getService('pdoTools');
$data = $Weather->getCurrentWeather($city);
setlocale(LC_ALL, 'ru_RU.UTF-8');
$date = strftime('%d %B');
if (!empty($tpl)) {
    $data = $pdo->getChunk($tpl, ['weather' => $data, 'date' => $date]);
}
return $data;
