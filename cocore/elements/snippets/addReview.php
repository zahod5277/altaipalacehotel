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
    'tv19' => $hook->getValue('starComfort'),
    'tv20' => $hook->getValue('starPersonal'),
    'tv21' => $hook->getValue('starFood'),
    'tv22' => $hook->getValue('iRecommended')
];
//собираем массив
$data = array_merge($baseData,$formData);

//создаем страницу
$response = $modx->runProcessor('resource/create', $data);

//идем дальше, в другие хуки.
//По-хорошему бы еще на ошибку красное окошко выдавать, но чото сложно
if ($response->isError()) {
//    die(var_dump($modx->error->failure($response->getMessage())) . '<br /><br/></br>?');
} else {
}