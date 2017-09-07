{if $files?}
    {foreach $files as $file}
        <div style="background-image: url('{$file.url}');background-position:center" class="swiper-slide swiper-slide_full-width"></div>
    {/foreach}
{/if}