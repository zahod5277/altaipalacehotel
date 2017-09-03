{if count($files) > 1}
    {foreach $files as $file}
        {if $file.idx>4}
            {var $style='style="display:none"'}
        {/if}
        <a {$style} data-fancybox="images" href="{$file.url}" rel="gallery">
            <img src="{$file.fun}">
        </a>
    {/foreach}
{/if}