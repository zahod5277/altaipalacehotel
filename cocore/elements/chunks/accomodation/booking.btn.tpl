{var $currency = [
    'usd' => $_modx->runSnippet('!CRcalc',[
        'input' => $price,
        'divider' => 'USD',
        'format' => '[0, "", " "]',
        ]),
    'eur' => $_modx->runSnippet('!CRcalc',[
        'input' => $price,
        'divider' => 'EUR',
        'format' => '[0, "", " "]',
        ])
]}
<div class="accomodation-basic__price__title">{$price} ₽</div>
<div class="accomodation-basic__price__text">≈ {$currency.usd} US $ или {$currency.eur}  €</div>
{if $bookingID?}
    <div class="accomodation-basic__price__button"><a href="/booking/?room-type={$bookingID}">Забронировать</a></div>
{/if}