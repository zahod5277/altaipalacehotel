<div class="fun-info-block">
    <div class="fun-info__item">
        <div class="fun-info__content" style="background-image:url('{$wide}')"></div>
        <h2 class="fun-info__title">{$pagetitle}</h2>
    </div>
    <div class="fun-info__article">
        <div class="wrap">
            <h2 class="fun-info__subtitle">
                {if $_pls['tv.funIco']?}
                    {var $class = ' style="background-image:url('~$_pls['tv.funIco']~')"'}
                {/if}
                <i class="fun-icon"{$class}></i>
                {$longtitle}
            </h2>
            <p class="fun-info__description">
                {$introtext}
            </p>
            <div class="fun-info__row">
                {$_modx->runSnippet('ms2Gallery',[
                    'limit' => 10,
                    'resources' => $id,
                    'tpl' => '@FILE:chunks/fun/fun.row.gallery.tpl'
                ])}
            </div>
        </div>
    </div>
</div>