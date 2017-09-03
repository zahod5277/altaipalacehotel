<section class="contacts-welcome">
    <div style="background-image: url('assets/template/images/image-car.jpg')" class="contacts-welcome__image"></div>
    <div class="contacts-welcome__links">
        <a href="{'19'|url}" class="contacts-welcome__link">Партнерам</a>
        <a href="{'20'|url}" class="contacts-welcome__link">Карта сайта</a>
    </div>
</section>
<section class="map-contacts">
    <div id="mapcontacts">
        {$_modx->config.YaMap}
    </div>
    <div class="wrap">
        <div class="map-contacts__info">
            <h3 class="map-contacts__info__title">Добраться к нам легко</h3>
            <p class="map-contacts__info__text">{$_modx->config.adress}</p>
            <p class="map-contacts__info__text">{$_modx->config.coords}</p>
            <a href="#" class="map-contacts__info__way">Построить маршрут</a>
            <p class="map-contacts__info__text">Телефон: {$_modx->config.headerNumber}</p>
            <a href="#" class="map-contacts__info__send-mail">Отправить письмо по электронной почте</a>
        </div>
    </div>
</section>
<div style="position:relative;height:0;padding-bottom:56.25%">
    {var $video = $_modx->resource.video|fromJSON}
    <iframe width="100%" height="700" src="{$video.video}" frameborder="0" allowfullscreen></iframe>}
</div>