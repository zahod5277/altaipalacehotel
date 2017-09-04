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

<div class="m-block">
    <div class="m-block__item">
        <div class="m-block__title">
            <span class="title">{$title}</span>
            <span class="dotted"></span>
        </div>
        <div class="m-block__desc">
            {$compos}
            <span class="weight">{$weight}</span>
        </div>
    </div>
    <div class="m-block__price">
        <span>{$price} руб.</span>
        <span>≈ {$currency.usd}$ или {$currency.eur}€</span>
    </div>
</div>