<section class="accomodation-welcome">
    <div class="wrap">
        <h1 class="accomodation-welcome__title">Настоящие <div class="accomodation-welcome__title__stars">★★★★</div></h1>
        {include 'file:chunks/accomodation/accomodationAdvantages.tpl'}
    </div>
</section>
<section class="accomodation-basic accomodation-lux">
    <div class="wrap">
        <h2 class="section__title">{$_modx->resource.pagetitle}</h2>
        <div class="accomodation-basic-wrap swiper-container">
            <div class="swiper-wrapper">
                {$_modx->runSnippet('ms2Gallery',[
                    'resources' => $_modx->resource.id,
                    'tpl' => '@FILE:chunks/accomodation/accomodation.gallery.tpl'
                ])}
            </div>
            <div class="accomodation-basic__pagination">
                <div class="wrap">
                    <img src="assets/template/images/svg/aleft.svg" class="accomodation-basic__pagination_left">
                    <img src="assets/template/images/svg/aright.svg" class="accomodation-basic__pagination_right">
                </div>
            </div>
            <div class="accomodation-basic__options">
                <div class="accomodation-basic__option">
                    <div class="accomodation-basic__option__title">Площадь номера</div>
                    <div class="accomodation-basic__option__value">{$_modx->resource.areaof}</div>
                </div>
                <div class="accomodation-basic__option">
                    <div class="accomodation-basic__option__title">Количество спальных мест</div>
                    <div class="accomodation-basic__option__value">{$_modx->resource.guests}</div>
                </div>
                <div class="accomodation-basic__option">
                    <div class="accomodation-basic__option__title">Планировка</div>
                    <div class="accomodation-basic__option__value">{$_modx->resource.layout}</div>
                </div>
            </div>
        </div>
        <div class="accomodation-basic__main-wrap">
            <p class="accomodation-basic__main-text">{$_modx->resource.introtext}</p>
            <div class="accomodation-basic__price">
                {$_modx->getChunk('@FILE:chunks/accomodation/booking.btn.tpl',[
                    'price' => $_modx->resource.price,
                    'bookingID' => $_modx->resource.bookingID,
                    'resource' => $_modx->resource.id
                ])}
                {$_modx->runSnippet('@FILE:snippets/getShareLinks.php',[
                    'resource' => $_modx->resource.id,
                    'tpl' => '@FILE:chunks/accomodation/accomodation.share.tpl'
                ])}
            </div>
        </div>
    </div>
</section>
