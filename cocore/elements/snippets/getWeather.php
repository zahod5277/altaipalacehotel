<?php

/** @var Weather $Weather */
$Weather = $modx->getService('Weather', 'Weather', MODX_CORE_PATH . 'components/weather/');
$pdo = $modx->getService('pdoTools');
$data = $Weather->getCurrentWeather($city);

$replacements = array(
    "Январь" => "января",
    "Февраль" => "февраля",
    "Март" => "марта",
    "Апрель" => "апреля",
    "Май" => "мая",
    "Июнь" => "июня",
    "Июль" => "июля",
    "Август" => "августа",
    "Сентябрь" => "сентября",
    "Октябрь" => "октября",
    "Ноябрь" => "ноября",
    "Декабрь" => "декабря"
);


setlocale(LC_ALL, 'ru_RU.UTF-8');
$day = strftime('%e');
$month = strftime('%B');
$month = $replacements[$month];
if (!empty($tpl)) {
    $data = $pdo->getChunk($tpl, ['weather' => $data, 'date' => $day.' '.$month]);
}
return $data;
