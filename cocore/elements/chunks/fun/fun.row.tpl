<div class="fun-info-block">
    <div class="fun-info__item">
        <div class="fun-info__content" style="background-image:url({$wide})"></div>
        <h2 class="fun-info__title">{$pagetitle}</h2>
    </div>
    <div class="fun-info__article">
        <div class="wrap">
            <h2 class="fun-info__subtitle">{$longtitle}</h2>
            <p class="fun-info__description">
                {$introtext}
            </p>
            <div class="fun-info__row">
                {$_modx->runSnippet('ms2Gallery',[
                    'limit' => 10,
                    'resources' => $id,
                    'tpl' => '@FILE:chunks/fun/fun.row.gallery.tpl'
                ])}
                <img src="assets/images/desc-item-1.jpg">
                <img src="assets/images/desc-item-2.png">
                <img src="assets/images/desc-item-3.png">
                <img src="assets/images/desc-item-4.png">
            </div>
        </div>
    </div>
</div>