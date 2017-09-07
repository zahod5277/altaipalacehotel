<section class="section-slider">
    <div class="section-slider-wrap swiper-container">
        <div class="swiper-wrapper">
            {$_modx->runSnippet('ms2Gallery',[
                'tpl' => '@FILE:chunks/restaurant/slider.row.tpl'
            ])}
        </div>
        <div class="section-slider__buttons__nav">
            <img src="assets/template/images/svg/slider-arrow-left.svg" class="section-slider__buttons__nav-left">
            <img src="assets/template/images/svg/slider-arrow-right.svg" class="section-slider__buttons__nav-right">
        </div>
    </div>
    <div class="swiper-pagination"></div>
</section>