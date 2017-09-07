<div class="section-slider-wrap swiper-container">
    <div class="swiper-wrapper">
        {if $files?}
            {foreach $files as $file}
                <div style="background-image: url('{$file.mainPage}');" class="swiper-slide">
                    {if $file.add?}
                        <a href="{$file.add|url}" style="display: block;width: 100%;height: 100%;position: absolute;top: 0;">
                            <div class="section-slider__button-gallery">
                                <img src="assets/template/images/svg/slider-picture.svg">
                                <p class="section-slider__button__text">Галерея</p>
                            </div>
                        </a>
                    {else}
                        {*<div class="section-slider__button-gallery">
                            <img src="assets/template/images/svg/slider-picture.svg">
                            <p class="section-slider__button__text">Галерея</p>
                        </div>*}
                    {/if}
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

