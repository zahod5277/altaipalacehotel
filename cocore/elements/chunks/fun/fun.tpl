<section class="section-title">
    <h1>отдых на любой вкус</h1>
</section>
<section class="fun-info">
    {$_modx->runSnippet('ms2GalleryResources',[
        'parents' => $_modx->resource.id,
        'typeOfJoin' => 'inner',
        'includeTVs' => 'ico,funIco',
        'includeThumbs' => 'small,wide',
        'includeOriginal' => 1,
        'includeContent' => 1,
        'showLog' => 0,
        'tpl' => '@FILE:chunks/fun/fun.row.tpl'
    ])}
</section>
<section class="section-title section-title_bottom mobile-show">
    <h2>отдых на любой вкус</h2>
</section>
{var $tags = $_modx->resource.funItems|fromJSON}
<section class="section-tabs mobile-show">
    <div class="wrap wrap-pagination">
        <img src="assets/template/images/svg/icon-slider-open.svg">
        <div class="section-tabs-pagination">
            {var $i = 0}
            {foreach $tags as $tag}
                {if $i == 0}
                    {var $class = ' section-tabs-bullet_active'}
                {else}
                    {var $class = ''}    
                {/if}
                <div class="section-tabs-bullet{$class}" data-pageid="{$_modx->resource.id}" data-tag="{$tag.MIGX_id}">{$tag.title}</div>
                {var $i = $i+1}
            {/foreach}
        </div>
    </div>
</section>
<div id="myCanvasContainer" class="tags-container">
    <canvas id="myCanvas" class="desktop-show" width="1349" height="500" style="">
        <p>Anything in here will be replaced on browsers that support the canvas element</p>
    </canvas>
    <div class="tags-container__mobile">
    <div class="tags-container__content">
            <div class="tags-container__article">
                {$tags[0]['descr']}
                <div class="tags-container__bottom">{$tags[0]['level']}</div>
            </div>
        </div>
    </div>
    <div id="tags" style="display: none;">
        <ul>
            {foreach $tags as $tag}
                <li>
                    <a href="#" data-pageid="{$_modx->resource.id}" data-tag="{$tag.MIGX_id}">{$tag.title}</a>
                </li>
            {/foreach}
        </ul>
    </div>
    <div class="tags-container__overlay">
        <div class="tags-container__content">
            <div class="tags-container__title"></div>
            <div class="tags-container__article">
                <div class="tags-container__bottom"></div>
            </div>
        </div>
    </div>
</div>