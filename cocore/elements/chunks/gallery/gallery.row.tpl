{if $files?}
    {foreach $files as $file}
        {if $file.add=='видео'}
            {var $url = $file.description}
            {var $mediaClass = 'fancybox-media '}
            {else}
            {var $url = $file.url}    
            {var $mediaClass = ''}
        {/if}
        {switch $file.idx}
        {case '1'}
        {var $bg = 'style="background-image:url('~$file.big~')"'}
        <div class="gallery__row gallery__row_large">
            <a href="{$url}" {$bg} rel="gallery1" data-fancybox="images" class="{$mediaClass}fancybox-thumb gallery__col gallery__col_1"></a>
            {case '2'}
            {var $bg = 'style="background-image:url('~$file.thumb~')"'}
            <a href="{$url}" {$bg} rel="gallery1" data-fancybox="images" class="{$mediaClass}fancybox-thumb gallery__col gallery__col_2"></a>
            {case '3'}
            {var $bg = 'style="background-image:url('~$file.thumb~')"'}
            <a href="{$url}" {$bg} rel="gallery1" data-fancybox="images" class="{$mediaClass}gallery__col gallery__col_3"></a>
            <div class="gallery__col gallery__col_text">
            {$_modx->runSnippet('pdoMenu',[
                'parents' => 4,
                'level' => 1,
                'showUnpublished' => 1
            ])}
            </div>
        </div>
        {case '4'}
        {var $bg = 'style="background-image:url('~$file.wide~')"'}
        <div class="gallery__row">
            <a href="{$url}" {$bg} rel="gallery1" data-fancybox="images" class="{$mediaClass}fancybox-thumb gallery__col gallery__col_4"></a>
            {case '5'}
            {var $bg = 'style="background-image:url('~$file.thumb~')"'}
            <a href="{$url}" {$bg} rel="gallery1" data-fancybox="images" class="{$mediaClass}fancybox-thumb gallery__col gallery__col_5"></a>
        </div>
        {case '6'}
        <div class="gallery__row gallery__row_fourth">
            {var $bg = 'style="background-image:url('~$file.thumb~')"'}
            <a href="{$url}" {$bg} rel="gallery1" data-fancybox="images" class="{$mediaClass}fancybox-thumb gallery__col gallery__col_6"></a>
            {case '7'}
            {var $bg = 'style="background-image:url('~$file.thumb~')"'}
            <a href="{$url}" {$bg} rel="gallery1" data-fancybox="images" class="{$mediaClass}fancybox-thumb gallery__col gallery__col_7"></a>
            {case '8'}
            {var $bg = 'style="background-image:url('~$file.thumb~')"'}
            <a href="{$url}" {$bg} rel="gallery1" data-fancybox="images" class="{$mediaClass}fancybox-thumb gallery__col gallery__col_8"></a>
            {case '9'}
            {var $bg = 'style="background-image:url('~$file.thumb~')"'}
            <a href="{$url}" data-nine="yes" {$bg} rel="gallery1" data-fancybox="images" class="{$mediaClass}fancybox-thumb gallery__col gallery__col_9"></a>
        </div>
        {case default}
        {if ($file.idx)==10||(($file.idx%4)==2&&($file.idx)!=12)}
            <div class="gallery__row gallery__row_fourth">
            {/if}
            {var $bg = 'style="background-image:url('~$file.thumb~')"'}
            <a data-idx="{$file.idx}"  {$bg} href="{$url}" rel="gallery1" data-fancybox="images" class="{$mediaClass}fancybox-thumb gallery__col gallery__col_6"></a>
            {if ($file.idx%4==1)||(($files|length)==($file.idx))}
            </div>
        {/if}
        {/switch}
    {/foreach}
{/if}
