<section class="accomodation-basic accomodation-lux">
    <div class="wrap">
        <h2 class="section__title">{$pagetitle}</h2>
        <div class="accomodation-basic-wrap swiper-container">
            <div class="swiper-wrapper">
                {$_modx->runSnippet('ms2Gallery',[
                    'resources' => $id,
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
                    <div class="accomodation-basic__option__value">{$_pls['tv.areaof']}</div>
                </div>
                <div class="accomodation-basic__option">
                    <div class="accomodation-basic__option__title">Количество спальных мест</div>
                    <div class="accomodation-basic__option__value">{$_pls['tv.guests']}</div>
                </div>
                <div class="accomodation-basic__option">
                    <div class="accomodation-basic__option__title">Планировка</div>
                    <div class="accomodation-basic__option__value">{$_pls['tv.layout']}</div>
                </div>
            </div>
        </div>
        <div class="accomodation-basic__main-wrap">
            <p class="accomodation-basic__main-text">{$introtext}</p>
            <div class="accomodation-basic__price">
                {$_modx->getChunk('@FILE:chunks/accomodation/booking.btn.tpl',[
                    'price' => $_pls['tv.price'],
                    'bookingID' => $_pls['tv.bookingID']
                ])}
                {$_modx->runSnippet('@FILE:snippets/getShareLinks.php',[
                    'resource' => $id,
                    'tpl' => '@FILE:chunks/accomodation/accomodation.share.tpl'
                ])}
            </div>
        </div>
    </div>
</section>