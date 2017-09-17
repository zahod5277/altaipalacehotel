{if $files?}
    {foreach $files as $file}
        {if $file.type=='image'}
            <section style="background-image: url('{$file.url}');" class="welcome section-slider__no-margin-top">
                <div class="wrap">
                    <div class="welcome__content">
                        <h1 class="welcome__title">{$file.name}</h1>
                        <p class="welcome__text">{$file.description}</p>
                    </div>
                </div>
            </section>
        {else}
            <section class="welcome hero-section">
                <div class="swiper-container swiper-container-horizontal swiper-container-autoheight" style="cursor: -webkit-grab;">
                    <div class="swiper-wrapper">
                        <div class="hero__item hero__item_video swiper-slide swiper-slide-duplicate swiper-slide-duplicate-active swiper-slide-prev" data-swiper-slide-index="0">
                            <video width="auto" height="auto" autoplay="" muted="" loop="">
                                <source src="{$file.url}" type="video/mp4">
                            </video>
                        </div>
                    </div>
                </div>
                <div class="wrap">
                    <div class="welcome__content">
                        <h1 class="welcome__title">{$file.name}</h1>
                        <p class="welcome__text">
                            {$file.description}
                        </p>
                    </div>
                </div>
            </section>
        {/if}
        {if ('standard'|detector)!=true}
        <div class="welcome__mobile">
            <div class="wrap">
                <div class="welcome__mobile__content">
                    <h1 class="welcome__title">{$file.name}</h1>
                    <p class="welcome__text">
                         {$file.description}
                    </p>
                </div>
            </div>
        </div>
        {/if}
    {/foreach}
{/if}