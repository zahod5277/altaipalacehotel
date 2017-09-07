<section style="background-image: url('assets/template/images/timelapse-video.jpg');" class="welcome">
    <div class="wrap">
        <div class="welcome__content">
            <h1 class="welcome__title">Арт-отель</h1>
            <p class="welcome__text">Окруженный со всех сторон горами и холмами, их легендами и памятью об исторических событиях – наш отель является оазисом покоя и уюта. Праздник культуры начнется здесь, в роскошном интерьере, а наш ресторан поразит гостей самобытной кухней и круглосуточным
                обслуживанием, что является диковинкой в этих далеких местах.</p>
        </div>
    </div>
</section>
<div class="welcome__mobile">
    <div class="wrap">
        <div class="welcome__mobile__content">
            <h1 class="welcome__title">Арт-отель</h1>
            <p class="welcome__text">Окруженный со всех сторон горами и холмами, их легендами и памятью об исторических событиях – наш отель является оазисом покоя и уюта. Праздник культуры начнется здесь, в роскошном интерьере, а наш ресторан поразит гостей самобытной кухней и круглосуточным
                обслуживанием, что является диковинкой в этих далеких местах.</p>
        </div>
    </div>
</div>
<div class="welcome__info">
    <div class="wrap">
        <img src="assets/template/images/svg/icon-dish.svg" class="welcome__info__icon">
        <div class="welcome__info__text">
            <p>Служба бронирования: <span class="phone">{$_modx->config.reservePhone}</span> {$_modx->config.reserveMail}</p>
        </div>
    </div>
</div>
<section class="section-slider">
    {$_modx->runSnippet('ms2Gallery',[
        'tpl' => '@FILE:chunks/main/mainGallery.tpl',
        'showLog' => 0,
        'includeThumbs' => 'mainPage'
    ])}
</section>
<section class="section-enjoy">
    <div class="wrap">
        <div class="section-enjoy__left">
            <h2 class="section-enjoy__title">...гостеприимный <br><span>и горный отдых!</span></h2>
        </div>
        <div class="section-enjoy__right">
            <p class="section-enjoy__text">Алтай расположен почти на равном расстоянии от трех океанов – Северного Ледовитого, Тихого и Индийского, за что и называется в древних письменах «пуповиной Земли».</p>
            <p class="section-enjoy__text">Ряд легенд повествует о том, что именно в этом месте расположен «пуп» Земли, энергетически связанный с Космосом, дарующий людям заряд бодрости и здоровья.</p>
            <p class="section-enjoy__text">Наш комплекс в полной мере отражает всю ценность такого месторасположения. Азарт и умиротворение живут тут в полной гармонии.</p>
        </div>
    </div>
</section>
<section class="section-tabs">
    <div class="wrap wrap-pagination">
        <img src="assets/template/images/svg/icon-slider-open.svg">
        <div class="section-tabs-pagination">
            <div class="section-tabs-bullet section-tabs-bullet_active">Уникальные предложения</div>
            <div class="section-tabs-bullet">Узнайте о нас больше</div>
            <div class="section-tabs-bullet">Отдых без границ</div>
            <div class="section-tabs-bullet">Как добраться</div>
        </div>
    </div>
    <div class="section-tabs__slider">
        <div class="section-tabs__slide section-tabs__slide_active section-tabs__slider-swiper swiper-container">
            <div class="wrap">
                {var $offers = $_modx->runSnippet('pdoField',[
                    'id' => 6,
                    'field' => 'specOffer'
                ])}
                <div class="section-tabs__items swiper-wrapper">
                    {foreach $offers as $offer}
                        {var $image = $_modx->runSnippet('phpthumbon',[
                    'input' => $offer.image,
                    'options' => 'w=240&h=180&zc=1&q=85'
                ])}
                    <div class="section-tabs__item swiper-slide">
                        <div class="section-tabs__item__wrap">
                            <img src="{$image}" class="section-tabs__item__image">
                            <div class="section-tabs__item__content">
                                <h4 class="section-tabs__item__title">{$offer.title}</h4>
                                <p class="section-tabs__item__text">{$offer.descr}</p>
                                <div class="section-tabs__item__button-wrap">
                                    <div class="section-tabs__item__button">Заказать</div>
                                    <div class="section-tabs__item__action">{$offer.dateUntil}</div>
                                </div>
                            </div>
                        </div>
                    </div>
                    {/foreach}
                </div>
            </div>
        </div>
        <div style="background-image:url('assets/template/images/front-image-tab-1.jpg')" class="section-tabs__slide">
            <div class="wrap">
                {$_modx->runSnippet('@FILE:snippets/getWeather.php',[
                    'city' => 11319,
                    'tpl' => '@FILE:chunks/common/weather.tpl'
                ])}
                <div class="section-tabs__slide__content">
                    <h3 class="section-tabs__slide__title">Арт-отель</h3>
                    <p class="section-tabs__slide__text">Развлекательный комплекс Altai Palace – это особенное место, в котором атмосфера роскоши и азарта сочетается с высоким уровнем комфорта и живописной природой Алтайского края.</p>
                    <p class="section-tabs__slide__text">Удобное расположение комплекса позволяет отвлечься от городской суеты и полностью погрузиться в мир ставок и выигрышей.</p>
                </div>
            </div>
        </div>
        <div class="section-tabs__slide slide-video">
            <div class="wrap">
                <div class="section-tabs__slide__video">
                    <div style="position:relative;height:0;padding-bottom:56.25%" class="section-tabs__slide__video-wrap">
                        {var $video = $_modx->resource.video|fromJSON}
                        <iframe width="100%" height="365" src="{$video.video}" frameborder="0" allowfullscreen></iframe>}
                    </div>
                </div>
                <div class="section-tabs__slide__right">
                    <h3 class="section-tabs__slide__title">Видео ролик об отеле</h3>
                    <p class="section-tabs__slide__text">Мы хотели бы поблагодарить Вас за предпочтение, оказанное при выборе места для отдыха.</p>
                    <p class="section-tabs__slide__text">Мы собрали всю необходимую информацию об отеле и об услугах, предоставляемых в нашем комплексе. Желаем Вам прекрасного отдыха и будем рады окружить Вас заботой и предоставить все необходимое, чтобы сделать Ваше пребывание у нас поистине незабываемым.</p>
                </div>
            </div>
        </div>
        <div class="section-tabs__slide">
            <div class="wrap contacts-wrap">
                <div class="section-tabs__slide__contacts">
                    <div class="section-tabs__slide__contacts-wrap">
                        <div class="section-tabs__slide__contacts-item">
                            <div class="section-tabs__slide__contacts-iwrap">
                                <img src="assets/template/images/pin-icon.png" width="22px" height="33px" class="section-tabs__slide__contacts-icon">
                            </div>
                            <div class="section-tabs__slide__contacts-content">
                                <h4 class="section-tabs__slide__contacts-title">Алтай Пэлас Отель</h4>
                                <p class="section-tabs__slide__contacts-text">Вы можете добраться до нашего отеля как на личном транспорте, так и на бесплатном шатле от аэропорта Горно-Алтайска.</p>
                            </div>
                        </div>
                        <div class="section-tabs__slide__contacts-item">
                            <div class="section-tabs__slide__contacts-iwrap">
                                <img src="assets/template/images/mail-icon.png" width="28px" height="31px" class="section-tabs__slide__contacts-icon">
                            </div>
                            <div class="section-tabs__slide__contacts-content">
                                <p class="section-tabs__slide__contacts-text">{$_modx->config.infoMail}</p>
                            </div>
                        </div>
                        <div class="section-tabs__slide__contacts-item">
                            <div class="section-tabs__slide__contacts-iwrap">
                                <img src="assets/template/images/nav-icon.png" width="32px" height="33px" class="section-tabs__slide__contacts-icon">
                            </div>
                            <div class="section-tabs__slide__contacts-content">
                                <p class="section-tabs__slide__contacts-text">Построить маршрут до отеля</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="slide-map">
                <div id="map" style="width: 100%; height: 450px" class="map">
                    {$_modx->config.YaMap}
                </div>
            </div>
        </div>
    </div>
</section>