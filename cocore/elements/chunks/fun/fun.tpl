<section class="section-title">
    <h1>отдых на любой вкус</h1>
</section>
<section class="fun-info">
    {$_modx->runSnippet('ms2GalleryResources',[
        'parents' => $_modx->resource.id,
        'typeOfJoin' => 'inner',
        'includeTVs' => 'ico',
        'includeThumbs' => 'small,wide',
        'includeOriginal' => 1,
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
                <div class="section-tabs-bullet{$class}">{$tag.title}</div>
                {var $i = $i+1}
            {/foreach}
        </div>
    </div>
</section>
<div id="myCanvasContainer" class="tags-container">
    <!--canvas#myCanvas.desktop-show(width='auto', height='auto')-->
    <canvas id="myCanvas" class="desktop-show" width="1349" height="800" style="">
        <p>Anything in here will be replaced on browsers that support the canvas element</p>
    </canvas>
    <div id="tags" style="display: none;">
        <ul>
            {foreach $tags as $tag}
                <li>
                    <a href="#" data-tag="{$tag.MIGX_id}">{$tag.title}</a>
                </li>
            {/foreach}
        </ul>
    </div>
    <div class="tags-container__overlay">
        <div class="tags-container__content">
            <div class="tags-container__title">Озеро Манжерок</div>
            <div class="tags-container__article">Бывает ли тур по Алтаю без экстрима и палаток? Да! Отправляйтесь в недельное путешествие по знаковым местам Алтая с ночёвкой на турбазах и этнографических стоянках. Однозначно лучший тур для первого раза на Алтае.
                <div class="tags-container__bottom">Для начинающих</div>
            </div>
        </div>
    </div>
</div>