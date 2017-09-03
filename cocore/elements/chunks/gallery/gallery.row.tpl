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
        <div class="gallery__row gallery__row_large">
            <a href="{$url}" rel="gallery1" data-fancybox="images" class="{$mediaClass}fancybox-thumb gallery__col gallery__col_1">
                <img src="{$file['big']}" alt="{$file.description}" class="img-responsive">
            </a>
            {case '2'}
            <a href="{$url}" rel="gallery1" data-fancybox="images" class="{$mediaClass}fancybox-thumb gallery__col gallery__col_2">
                <img src="{$file['thumb']}" alt="{$file.description}" class="img-responsive">
            </a>
            {case '3'}
            <a href="{$url}" rel="gallery1" data-fancybox="images" class="{$mediaClass}gallery__col gallery__col_3">
                <img src="{$file['thumb']}" alt="{$file.description}" class="img-responsive">
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
            <a href="{$url}" rel="gallery1" data-fancybox="images" class="{$mediaClass}fancybox-thumb gallery__col gallery__col_4">
                <img src="{$file['wide']}" alt="{$file.description}" class="img-responsive">
            </a>
            {case '5'}
            <a href="{$url}" rel="gallery1" data-fancybox="images" class="{$mediaClass}fancybox-thumb gallery__col gallery__col_5">
                <img src="{$file['thumb']}" alt="{$file.description}" class="img-responsive">
            </a>
        </div>
        {case '6'}
        <div class="gallery__row gallery__row_fourth">
            <a href="{$url}" rel="gallery1" data-fancybox="images" class="{$mediaClass}fancybox-thumb gallery__col gallery__col_6">
                <img src="{$file['thumb']}" alt="{$file.description}" class="img-responsive">
            </a>
            {case '7'}
            <a href="{$url}" rel="gallery1" data-fancybox="images" class="{$mediaClass}fancybox-thumb gallery__col gallery__col_7">
                <img src="{$file['thumb']}" alt="{$file.description}" class="img-responsive">
            </a>
            {case '8'}
            <a href="{$url}" rel="gallery1" data-fancybox="images" class="{$mediaClass}fancybox-thumb gallery__col gallery__col_8">
                <img src="{$file['thumb']}" alt="{$file.description}" class="img-responsive">
            </a>
            {case '9'}
            <a href="{$url}" rel="gallery1" data-fancybox="images" class="{$mediaClass}fancybox-thumb gallery__col gallery__col_9">
                <img src="{$file['thumb']}" alt="{$file.description}" class="img-responsive">
            </a>
        </div>
        {case default}
        {if ($file.idx)==10||(($file.idx%4)==2&&($file.idx)!=12)}
            <div class="gallery__row gallery__row_fourth">
            {/if}
            <a data-idx="{$file.idx}" href="{$url}" rel="gallery1" data-fancybox="images" class="{$mediaClass}fancybox-thumb gallery__col gallery__col_6">
                <img src="{$file['thumb']}" alt="{$file.description}" class="img-responsive">
            </a>
            {if ($file.idx%4==1)||(($files|length)==($file.idx))}
            </div>
        {/if}
        {/switch}
    {/foreach}
{/if}
