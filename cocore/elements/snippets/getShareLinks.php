<?php

$pdo = $modx->getService('pdoTools');
$pls = [];

if (!isset($resource)) {
    return '';
}

$page = $modx->getObject('modResource', $resource);
$hashtags = $page->getTVValue('twitterHashtags');
$title = $page->get('pagetitle');
$url = $modx->makeUrl($resource,'','','full');

$img = $pdo->runSnippet('ms2GalleryResources', [
    'resources' => $resource,
    'includeThumbs' => 'big',
    'showLog' => 0,
    'tpl' => '@INLINE {$_modx->config.site_url}{$big}'
        ]);

if (!isset($img)) {
    $img = 'assets/template/images/svg/logo.svg';
}

$sharetext = $page->getTVValue('sharetext');
if ($sharetext=='') {
    $sharetext = $page->get('introtext');
}
if ($sharetext=='') {
    $sharetext = 'Altai Palace Hotel ' . $title;
}
//обрезаем строку для соответствия твиту
$sharetext = substr($sharetext, 0, 130).'...';

$links = [
    'twitter' => [
        'sharelink' => 'http://twitter.com/share?',
        'params' => [
            'url' => $url,
            'text' => $sharetext,
            'hashtags' => $hashtags,
            'via' => 'Altai Palace Hotel site'
        ]],
    'vk' => [
        'sharelink' => 'http://vkontakte.ru/share.php?',
        'params' => [
        'title' => $title,
        'description' => $sharetext,
        'url' => $url,
        'image' => $img
    ]],
    'facebook' => [
        'sharelink' => 'http://www.facebook.com/sharer.php?',
        'params' => [
        's' => strlen($sharetext),
        'p[title]' => $title,
        'p[summary]' => $sharetext,
        'p[url]' => $url,
        'p[images][0]' => $img
    ]]
];

foreach ($links as $key => $params){
    $links[$key]['generatedUrl'] = $params['sharelink'].http_build_query($params['params']);
    $pls[$key] = $links[$key]['generatedUrl'];
}
$output = $pdo->getChunk($tpl,$pls);
return $output;
