{if count($files)>0}
    {foreach $files as $file}
        <div style="background-image: url('{$file.url}');background-size: cover;background-position: center;" class="swiper-slide">
        </div>
    {/foreach}
{/if}