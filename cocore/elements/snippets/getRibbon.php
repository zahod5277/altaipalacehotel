<?php
//TODO - сделать кэширование, порядок вывода соц.сетей, настройки по-умолчанию
//сделать из этого пакет
//если в кэше ничего не лежит, то запускаем скрипт
if (!$data = $modx->cacheManager->get('newsbelt')) {
//настройка параметров
require_once(MODX_CORE_PATH . 'components/twitter/TwitterAPIExchange.php');

$pdo = $modx->getService('pdoTools');

$ribbonItems = array();

//get Tweets
$settings = array(
    'oauth_access_token' => "817456354940125184-FMBeQGAa8zVzw90DfouMT5RWE8FzKX2",
    'oauth_access_token_secret' => "ixItFvzlQdZ8tghm46YNUzr1afyLn6fELLrux3Ws42GH0",
    'consumer_key' => "PO0vxoMjtTK2lBEULGXDGKmeW",
    'consumer_secret' => "gJLpnbU0htLTXF574qROBFL1T1vnFAznb3hA6D7pmv7HFVkMxX"
);

$url = 'https://api.twitter.com/1.1/statuses/user_timeline.json';
$requestMethod = 'GET';
if (!isset($twitterLogin)){
    $twitterLogin = 'zahod5277';
}
$getfield = '?screen_name='.$twitterLogin.'&count='.$twittLimit.'&include_rts=false';

$twitter = new TwitterAPIExchange($settings);
$tweets = $twitter->setGetfield($getfield)
        ->buildOauth($url, $requestMethod)
        ->performRequest();
$tweets = $modx->fromJSON($tweets);

//get Instagram
if (!isset($instaLogin)){
    $instaLogin = 'zahod5277';
}
$url = 'https://www.instagram.com/'.$instaLogin;
// Set the JSON URL
$jsonUrl = $url. '/media/';
$photos = $modx->fromJSON(file_get_contents($jsonUrl));

if (!isset($instaLimit)){
    $instaLimit = 3;
}

$photos = $photos['items'];
$photos = array_slice($photos, 0,$instaLimit-1);
foreach ($photos as $photo){
    $id = '';
    $text = '';
    $date = '';
    $time = '';
    if (!$photo['videos']){
        $img = $photo['images']['standard_resolution']['url'];
        $ribbonItems[] = ['id' => $id,
            'text' => $text,
            'img' => $img,
            'bg' => $img,
            'time' => $time,
            'instalogin' => $instaLogin,
            'type' => 'instagram'
            ];
    }
}

foreach ($tweets as $tweet) {
    $id = $tweet['id'];
    $text = $tweet['text'];
    $created = $tweet['created_at'];
    $time = strtotime($created);
    $ribbonItems[] = ['id' => $id,
        'text' => $text,
        'img' => '',
        'bg' => '',
        'time' => $time,
        'type' => 'tweet'
        ];
}

//shuffle($ribbonItems);

foreach ($ribbonItems as $item){
    $placeholders = ['id' => $item['id'],
        'text' => $item['text'],
        'img' => $item['img'],
        'bg' => $item['bg'],
        'buttonImg' => $item['buttonImg'],
        'time' => $item['time'],
        'instalogin' => $item['instalogin'],
        'blacklogo' => $item['blacklogo'],
        'type' => $item['type']
        ];
    $output .= $pdo->getChunk($tpl,$placeholders);
}
$modx->cacheManager->set('newsbelt', $output,86400);
} else {
    $output = $data;
}
//return var_dump($ribbonItems);
return $output;

