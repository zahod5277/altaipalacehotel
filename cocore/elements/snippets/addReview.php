<?php

/*
 * Хук для FormIt для создания страниц - отзывов
 */

//Базовые параметры ресурса
$baseData = [
    'template' => 12,
    'published' => 0,
    'parent' => 7
];

//Данные, полученные из FormIt. Получаем, форматируем и заполняем. 
$pagetitle = $hook->getValue('guestName') . ' ' . $hook->getValue('incomingDate');

//Создадим псевдоним для страницы
$ghostPage = $modx->newObject('modResource');
$alias = $ghostPage->cleanAlias($pagetitle);

$formData = [
    'pagetitle' => $pagetitle,
    'alias' => $alias,
    'tvs' => true,
    'content' => $hook->getValue('content'),
    'tv13' => $hook->getValue('guestName'),
    'tv14' => $hook->getValue('incomingDate'),
    'tv15' => $hook->getValue('contactNumber'),
    'tv16' => $hook->getValue('eMail'),
    'tv17' => $hook->getValue('city'),
    'tv18' => $hook->getValue('travelPurpose'),
    'tv19' => !empty($hook->getValue('starComfort'))? $hook->getValue('starComfort') : 3,
    'tv20' => !empty($hook->getValue('starPersonal')) ? $hook->getValue('starPersonal') : 3,
    'tv21' => !empty($hook->getValue('starFood')) ? $hook->getValue('starFood') : 3,
    'tv22' => !empty($hook->getValue('iRecommended')) ? $hook->getValue('iRecommended') : 0
];
//собираем массив
$data = array_merge($baseData,$formData);

//создаем страницу
$response = $modx->runProcessor('resource/create', $data);

//идем дальше, в другие хуки.
//По-хорошему бы еще на ошибку красное окошко выдавать, но чото сложно
if ($response->isError()) {
} else {
}