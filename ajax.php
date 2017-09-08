<?php

header('Content-Type: text/html; charset=utf-8');
define('MODX_API_MODE', true);
require 'index.php';
$pdo = $modx->getService('pdoTools');
// Откликаться будет ТОЛЬКО на ajax запросы
if (empty($_SERVER['HTTP_X_REQUESTED_WITH']) || $_SERVER['HTTP_X_REQUESTED_WITH'] != 'XMLHttpRequest') {
    return;
}
// Сниппет будет обрабатывать не один вид запросов, поэтому работать будем по запрашиваемому действию
// Если в массиве POST нет действия - выход
if (!empty($_POST['action'])) {
    switch ($_POST['action']) {
        case 'getTag':
            $json = $pdo->runSnippet('@FILE:snippets/getTag.php',[
                'option' => $_POST['tag'],
                'docid' => $_POST['docid']
            ]);
            $res = [
                'status' => 'success',
                'html' => $json
            ];
            break;
        case 'gallery':
            $output = $pdo->parseChunk('@FILE:chunks/gallery/ajaxGallery.tpl', [
                    'gallery' => $_POST['gallery']
                ]);
            $res = [
                'html' => $output,
                'status' => 'success'
            ];

            break;
    }
} else {
    return;
}
if (!empty($res)) {
    $res = $modx->toJSON($res);
    die($res);
}