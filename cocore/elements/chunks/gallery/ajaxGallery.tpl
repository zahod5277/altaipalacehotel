{if $_modx->resource.id==4}
    {var $gallery = 10}
{else}
    {var $gallery = $_modx->resource.id}
{/if}
<div class="gallery" id="pdopage" style="display:none">
    <div class="rows">
        {$_modx->runSnippet('!pdoPage',[
                'element' => 'ms2Gallery',
                'tpl' => '@FILE:chunks/gallery/gallery.row.tpl',
                'resources' => $gallery,
                'offset' => 9,
                'limit' => 8,
                'ajax' => 1,
                'setMeta' => 1,
                'ajaxMode' => 'button',
                'frontend_css' => '',
                'ajaxTplMore' => '@INLINE <a class="gallery__button btn-more">больше фотографий</a>'
            ])}
    </div>
    {$_modx->getPlaceholder('page.nav')}
</div>     