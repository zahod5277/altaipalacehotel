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
                    {/if}
                    {if $file.description?}
                        <div class="section-slider__button-gallery section-slider__button-gallery_bottom">
                            <svg xmlns="http://www.w3.org/2000/svg" width="26" height="15" viewBox="0 0 26 15">
                                <path fill="#fff" d="M25.83.08a.42.42 0 0 0-.38-.06 41.32 41.32 0 0 1-24.9 0A.42.42 0 0 0 0 .41v14.18c0 .13.07.25.17.33.11.08.25.1.38.06a41.32 41.32 0 0 1 24.9 0l.13.02c.09 0 .17-.03.25-.08.1-.08.17-.2.17-.33V.41a.41.41 0 0 0-.17-.33zm-.67 13.95a42.34 42.34 0 0 0-24.32 0V.97a42.34 42.34 0 0 0 24.32 0zM9.65 7.6a.46.46 0 0 0-.3-.12.46.46 0 0 0-.3.12l-3.42 3.32c-1.24.22-2.49.5-3.7.83a.41.41 0 0 0-.3.51c.06.18.23.29.41.29l.12-.01c1.23-.33 2.5-.62 3.75-.83l.04-.01.04-.01v-.01l.03-.01h.01l.02-.01.02-.01.01-.01.02-.02.01-.01.02-.01v-.01l3.22-3.12 2.14 2.08c.16.16.43.16.59 0a.4.4 0 0 0 0-.58l-1.12-1.09L13.4 6.5l5 4.87h.01l.02.02.02.01.02.01v.01l.03.02h.02l.02.01.01.01.02.01h.02l.02.01h.03a41.78 41.78 0 0 1 5.32 1.08c.19 0 .35-.12.4-.3a.4.4 0 0 0-.28-.5 43.2 43.2 0 0 0-5.18-1.07l-5.2-5.05a.43.43 0 0 0-.6 0L10.36 8.3zm9.03-.48c.9 0 1.64-.71 1.64-1.59 0-.88-.74-1.59-1.64-1.59-.9 0-1.64.71-1.64 1.59 0 .88.74 1.59 1.64 1.59zm0-2.36c.44 0 .8.34.8.77s-.36.77-.8.77a.78.78 0 0 1-.8-.77c0-.43.36-.77.8-.77z"></path>
                            </svg>
                            <p class="section-slider__button__text">
                                {$file.description}
                            </p>
                        </div>
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
                {/if}

