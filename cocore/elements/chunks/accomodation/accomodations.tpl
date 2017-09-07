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
    'sortby' => 'menuindex',
    'sortdir' => 'ASC',
    'tpl' => '@FILE:chunks/accomodation/accomodation.row.tpl'
])}

<section class="regulations">
    <div class="wrap">
        <h1 class="regulations__title">Правила бронирования</h1>
        <ul class="regulations__list">
            <li class="regulations__list__item">▰ Заезд с 14:00; Выезд до 12:00 часов дня</li>
            <li class="regulations__list__item">▰ Ранний заезд и поздний выезд возможен по запросу (50% от стоимости номера в сутки)</li>
            <li class="regulations__list__item">▰ Ранний заезд – до 08.00 – 100% от стоимости номера в сутки (включая завтрак), после 08.00 – 50% от стоимости номера в сутки (включая завтрак).</li>
            <li class="regulations__list__item">▰ Поздний выезд – до 18.00 – 50%от стоимости номера в сутки, после 18.00 – 100% от стоимости номера в сутки.</li>
        </ul>
        <p class="regulations__text">В стоимость номера входят: завтрак, охраняемая парковка, wi-fi, все налоги и сборы.</p><span class="regulations__important">ВАЖНАЯ ИНФОРМАЦИЯ!</span>
        <p class="regulations__text">Бронирование номеров ТОЛЬКО по предоплате. Не менее 30% от стоимости всего периода проживания. Либо, ПОЛНАЯ оплата первых суток пребывания. В предвыходные и выходные дни, на летнее время, бронирование номеров доступно на период НЕ МЕНЕЕ 3 суток.</p>
    </div>
</section>