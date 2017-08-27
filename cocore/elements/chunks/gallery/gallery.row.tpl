{if $files?}
    {foreach $files as $file}
        {switch $file.idx}
        {case '1'}
        <div class="gallery__row gallery__row_large">
            <a href="{$file['url']}" rel="gallery1" data-fancybox="images" class="fancybox-thumb gallery__col gallery__col_1">
                <img src="{$file['big']}" alt="">
            </a>
            {case '2'}
            <a href="{$file['url']}" rel="gallery1" data-fancybox="images" class="fancybox-thumb gallery__col gallery__col_2">
                <img src="{$file['thumb']}" alt="">
            </a>
            {case '3'}
            <a href="{$file['url']}" rel="gallery1" data-fancybox="video" class="fancybox-media gallery__col gallery__col_3">
                <img src="{$file['thumb']}" alt="">
            </a>
            <div class="gallery__col gallery__col_text">
            {$_modx->runSnippet('pdoMenu',[
                'parents' => 4,
                'level' => 1,
                'showUnpublished' => 1
            ])}
            </div>
        </div>
        {case '4'}
        <div class="gallery__row">
            <a href="{$file['url']}" rel="gallery1" data-fancybox="images" class="fancybox-thumb gallery__col gallery__col_4">
                <img src="{$file['wide']}" alt="">
            </a>
            {case '5'}
            <a href="{$file['url']}" rel="gallery1" data-fancybox="images" class="fancybox-thumb gallery__col gallery__col_5">
                <img src="{$file['thumb']}" alt="">
            </a>
        </div>
        {case '6'}
        <div class="gallery__row gallery__row_fourth">
            <a href="{$file['url']}" rel="gallery1" data-fancybox="images" class="fancybox-thumb gallery__col gallery__col_6">
                <img src="{$file['thumb']}" alt="">
            </a>
            {case '7'}
            {var $class = 'style="background-image:url('~$file['thumb']~')"'}
            <a href="{$file['url']}" {$class} rel="gallery1" data-fancybox="images" class="fancybox-thumb gallery__col gallery__col_7"></a>
            {case '8'}
            {var $class = 'style="background-image:url('~$file['thumb']~')"'}
            <a href="{$file['url']}" {$class} rel="gallery1" data-fancybox="images" class="fancybox-thumb gallery__col gallery__col_8"></a>
            {case '9'}
            {var $class = 'style="background-image:url('~$file['thumb']~')"'}
            <a href="{$file['url']}" {$class} rel="gallery1" data-fancybox="images" class="fancybox-thumb gallery__col gallery__col_9"></a>
        </div>
        {case default}
        {if ($file.idx)==10||(($file.idx%4)==2&&($file.idx)!=12)}
            <div class="gallery__row gallery__row_fourth">
            {/if}
            {var $class = 'style="background-image:url('~$file['thumb']~')"'}
            <a data-idx="{$file.idx}" href="{$file['url']}" {$class} rel="gallery1" data-fancybox="images" class="fancybox-thumb gallery__col gallery__col_6"></a>
            {if ($file.idx%4==1)||(($files|length)==($file.idx))}
            </div>
        {/if}
        {/switch}
    {/foreach}
{/if}
