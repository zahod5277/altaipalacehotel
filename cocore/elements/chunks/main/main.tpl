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
        <div class="welcome__info__text">Служба бронирования: +7 (963) 512-52-72 | reserv@altaipalace.ru</div>
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
                    <div class="section-tabs__item swiper-slide">
                        <div class="section-tabs__item__wrap">
                            <img src="{$offer.image}" class="section-tabs__item__image">
                            <div class="section-tabs__item__content">
                                <h4 class="section-tabs__item__title">{$offer.title}</h4>
                                <p class="section-tabs__item__text">{$offer.descr}</p>
                                <div class="section-tabs__item__button-wrap">
                                    <div class="section-tabs__item__button">Заказать</div>
                                    <div class="section-tabs__item__action">Предложение действительно до 31 декабря 2017.</div>
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
                <div class="section-tabs__slide__clock">
                    <h5 class="section-tabs__slide__clock-title_mobile">Сейчас на Алтае 22 сентября</h5>
                    <div class="section-tabs__slide__clock-wrap">
                        <h5 class="section-tabs__slide__clock-title">Сейчас на Алтае</h5>
                        <div class="demo-container clocks active bounce">
                            <article class="clock ios7 simple station js-london">
                                <div class="clock__paths">
                                    <div class="clock__path"></div>
                                    <div class="clock__path"></div>
                                    <div class="clock__path"></div>
                                    <div class="clock__path"></div>
                                    <div class="clock__path"></div>
                                    <div class="clock__path"></div>
                                    <div class="clock__path"></div>
                                    <div class="clock__path"></div>
                                </div>
                                <section class="hours-container">
                                    <section class="hours"></section>
                                </section>
                                <section class="minutes-container">
                                    <section class="minutes"></section>
                                </section>
                                <section class="seconds-container">
                                    <section class="seconds"></section>
                                </section>
                            </article>
                        </div>
                        {$_modx->runSnippet('@FILE:snippets/getWeather.php',[
                            'city' => 11319,
                            'tpl' => '@FILE:chunks/common/weather.tpl'
                        ])}
                        <div class="section-tabs__slide__clock-weather_mobile">
                            <img src="assets/template/images/svg/icon-weather-big.svg" class="section-tabs__slide__clock-weather_image">
                            <div class="section-tabs__slide__clock-weather_text">+19 °C</div>
                        </div>
                    </div>
                </div>
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
                        <iframe src="https://www.youtube.com/embed/pqtQnAwTfYY?ecver=2" width="640" height="360" frameborder="0" style="position:absolute;width:100%;height:100%;left:0" allowfullscreen assync></iframe>
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
                                <p class="section-tabs__slide__contacts-text">info@altaipalace.ru</p>
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
                <div id="map" style="width: 100%; height: 450px" class="map"><ymaps class="ymaps-2-1-55-map" style="width: 1349px; height: 450px;"><ymaps class="ymaps-2-1-55-map ymaps-2-1-55-i-ua_js_yes ymaps-2-1-55-map-bg-ru ymaps-2-1-55-islets_map-lang-ru" style="width: 1349px; height: 450px;"><ymaps class="ymaps-2-1-55-inner-panes"><ymaps class="ymaps-2-1-55-events-pane ymaps-2-1-55-user-selection-none" unselectable="on" style="height: 100%; width: 100%; top: 0px; left: 0px; position: absolute; z-index: 2500; cursor: url(&quot;https://api-maps.yandex.ru/2.1.55/build/release/images/util_cursor_storage_grab.cur&quot;) 16 16, url(&quot;https://api-maps.yandex.ru/2.1.55/build/release/images/util_cursor_storage_grab.cur&quot;), move;"></ymaps><ymaps class="ymaps-2-1-55-ground-pane" style="top: 0px; left: 0px; position: absolute; transition-duration: 0ms; transform: translate3d(0px, 0px, 0px) scale(1, 1); z-index: 501; transition-timing-function: linear;"><ymaps style="position: absolute; z-index: 150;"><canvas height="706" width="1605" style="position: absolute; width: 1605px; height: 706px; left: -128px; top: -128px;"></canvas></ymaps></ymaps><ymaps class="ymaps-2-1-55-copyrights-pane" style="height: 0px; bottom: 5px; right: 3px; top: auto; left: 10px; position: absolute; z-index: 5002;"><ymaps><ymaps class="ymaps-2-1-55-copyright ymaps-2-1-55-copyright_logo_no" style=""><ymaps class="ymaps-2-1-55-copyright__fog">…</ymaps><ymaps class="ymaps-2-1-55-copyright__wrap"><ymaps class="ymaps-2-1-55-copyright__layout"><ymaps class="ymaps-2-1-55-copyright__content-cell"><ymaps class="ymaps-2-1-55-copyright__content"><ymaps class="ymaps-2-1-55-copyright__text">© Яндекс</ymaps><ymaps class="ymaps-2-1-55-copyright__agreement">&nbsp;<a class="ymaps-2-1-55-copyright__link" target="_blank" href="https://yandex.ru/legal/maps_termsofuse/?lang=ru">Условия использования</a></ymaps></ymaps></ymaps><ymaps class="ymaps-2-1-55-copyright__logo-cell"><a class="ymaps-2-1-55-copyright__logo" href="" target="_blank"></a></ymaps></ymaps></ymaps></ymaps></ymaps><ymaps class="ymaps-2-1-55-map-copyrights-promo"><iframe src="https://api-maps.yandex.ru/services/inception/?lang=ru_RU&amp;iframe_id=9580&amp;url=%2Fmap&amp;api_version=2.1.55&amp;mode=release&amp;referer_host=altaipalace.ru&amp;data=%7B%22mapState%22%3A%7B%22origin%22%3A%22jsapi_2_1_55%22%2C%22source%22%3A%22api-maps%22%2C%22from%22%3A%22api-maps%22%2C%22host%22%3A%22altaipalace.ru%22%7D%2C%22options%22%3A%7B%22padding%22%3A%220%200%2010px%2010px%22%7D%2C%22availWidth%22%3A1130%7D" width="124" height="34" scrolling="no" frameborder="0" style="overflow: hidden;"></iframe></ymaps></ymaps><ymaps class="ymaps-2-1-55-controls-pane" style="width: 100%; top: 0px; left: 0px; position: absolute; z-index: 4503;"><ymaps class="ymaps-2-1-55-controls__toolbar" style="margin-top: 10px;"><ymaps class="ymaps-2-1-55-controls__toolbar_left"></ymaps><ymaps class="ymaps-2-1-55-controls__toolbar_right"></ymaps></ymaps><ymaps class="ymaps-2-1-55-controls__bottom" style="top: 450px;"></ymaps></ymaps><ymaps class="ymaps-2-1-55-places-pane" style="top: 0px; left: 0px; position: absolute; transition-duration: 0ms; transform: translate3d(0px, 0px, 0px) scale(1, 1); z-index: 2004; transition-timing-function: linear;"><ymaps class="ymaps-2-1-55-placemark-overlay ymaps-2-1-55-user-selection-none" unselectable="on" style="z-index: 650; height: 0px; width: 0px; position: absolute; left: 885px; top: 135px;"><ymaps><ymaps class="ymaps-2-1-55-image " style="position: absolute; left: -3px; top: -42px; width: 43px; height: 38px; opacity: 1; background-position: 0px 0px; background-size: 43px 38px; background-image: url(&quot;http://altaipalace.ru/wp-content/themes/AltaiPalce/images/Pin.png&quot;);"></ymaps></ymaps></ymaps></ymaps></ymaps></ymaps></ymaps></div>
            </div>
        </div>
    </div>
</section>