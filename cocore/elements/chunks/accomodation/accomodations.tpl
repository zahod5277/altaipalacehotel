<section class="accomodation-welcome">
    <div class="wrap">
        <h1 class="accomodation-welcome__title">Настоящие <div class="accomodation-welcome__title__stars">★★★★</div></h1>
        {include 'file:chunks/accomodation/accomodationAdvantages.tpl'}
    </div>
</section>
{$_modx->runSnippet('pdoResources',[
    'parents' => $_modx->resource.id,
    'includeTVs' => 'areaof, layout, price, guests, bookingID, twitterSharetext,twitterHashtags',
    'processTVs' => 1,
    'prepareTVs' => 1,
    'tpl' => '@FILE:chunks/accomodation/accomodation.row.tpl'
])}
