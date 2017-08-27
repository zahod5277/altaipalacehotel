{if $_modx->resource.id==4}
    {var $gallery = 10}
{else}
    {var $gallery = $_modx->resource.id}
{/if}
<div class="wrap">
    <div class="gallery" id="pdopage">
        <div class="rows">
            {$_modx->runSnippet('!pdoPage',[
                'element' => 'ms2Gallery',
                'tpl' => '@FILE:chunks/gallery/gallery.row.tpl',
                'resources' => $gallery,
                'limit' => 9,
                'ajax' => 1,
                'setMeta' => 1,
                'ajaxMode' => 'button',
                'frontend_css' => '',
                'ajaxTplMore' => '@INLINE <a href="#" class="gallery__button btn-more">больше фотографий</a>'
            ])}
        </div>
        {$_modx->getPlaceholder('page.nav')}
    </div>
</div>