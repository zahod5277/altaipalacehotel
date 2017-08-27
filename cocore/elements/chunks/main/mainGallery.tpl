<div class="section-slider-wrap swiper-container">
    <div class="swiper-wrapper">
        {if $files?}
            {foreach $files as $file}
                <div style="background-image: url('{$file.mainPage}');" class="swiper-slide">
                    <div class="section-slider__button-gallery">
                        <img src="assets/template/images/svg/slider-picture.svg">
                        <p class="section-slider__button__text">Галерея</p>
                    </div>
                </div>
            {/foreach}
        </div>
        <div class="section-slider__buttons__nav">
            <img src="assets/template/images/svg/slider-arrow-left.svg" class="section-slider__buttons__nav-left">
            <img src="assets/template/images/svg/slider-arrow-right.svg" class="section-slider__buttons__nav-right">
        </div>
    </div>
    <div class="swiper-pagination"></div>
{else}
{/if}

