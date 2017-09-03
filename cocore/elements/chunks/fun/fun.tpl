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
<section class="section-tabs mobile-show">
    <div class="wrap wrap-pagination">
        <img src="assets/images/svg/icon-slider-open.svg">
        <div class="section-tabs-pagination">
            <div class="section-tabs-bullet section-tabs-bullet_active">Уникальные предложения</div>
            <div class="section-tabs-bullet">Узнайте о нас больше</div>
            <div class="section-tabs-bullet">Отдых без границ</div>
            <div class="section-tabs-bullet">Как добраться</div>
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
            <li><a href="#">Тайны священной долины</a>
            </li>
            <li><a href="#">Озеро Манжерок</a>
            </li>
            <li><a href="#">Гора «Чертов палец»</a>
            </li>
            <li><a href="#">Каракольские озера</a>
            </li>
            <li><a href="#">Телецкое озеро</a>
            </li>
            <li><a href="#">Город-курорт Белокуриха</a>
            </li>
        </ul>
    </div>
</div>