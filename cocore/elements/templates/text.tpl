{extends 'file:templates/base.tpl'}
{block 'CONTENT'}
    <section class="wrap">
        <h1 class="textHeading">{$_modx->resource.pagetitle}</h1>
        <div class="textcontent">
            {$_modx->resource.content}
        </div>
    </section>
{/block}