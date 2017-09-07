{if $_modx->resource.id==4}
    {var $gallery = 10}
{else}
    {var $gallery = $_modx->resource.id}
{/if}
<div class="wrap">
    <div class="gallery">
        <div class="rows">
            {$_modx->runSnippet('ms2Gallery',[
                'tpl' => '@FILE:chunks/gallery/gallery.row.tpl',
                'resources' => $gallery,
                'limit' => 9
            ])}
        </div>
        <a href="#" style="display:none" class="ajaxGallery gallery__button btn-more">больше фотографий</a>
    </div>
    {include 'file:chunks/gallery/ajaxGallery.tpl'}
</div>