<section class="section-breadcrums">
    <div class="wrap">
        <a href="#" data-breadcrumb="all" class="section-breadcrums__item section-breadcrums__item_active">Все вместе</a>
        <a href="#" data-breadcrumb="hot" class="section-breadcrums__item">Горячие предложения</a>
        <a href="#" data-breadcrumb="usual" class="section-breadcrums__item">Долгосрочные</a>
    </div>
</section>
{var $offers = $_modx->resource.specOffer|fromJSON}
<section class="section-spec">
    <div class="wrap">
        <div class="section-spec__items">
            {foreach $offers as $offer}
                {var $image = $_modx->runSnippet('phpthumbon',[
                    'input' => $offer.image,
                    'options' => 'w=240&h=180&zc=1&q=85'
                ])}
                <div class="section-spec__item spec-item" data-spec="{$offer.type}">
                    <div class="section-spec__item__wrap">
                        <img src="{$image}" class="section-spec__item__image">
                        <div class="section-spec__item__content">
                            <h4 class="section-spec__item__title spec-order-title">{$offer.title}</h4>
                            <p class="section-spec__item__text">
                                {$offer.descr}
                            </p>
                            <div class="section-spec__item__button-wrap">
                                <div class="section-spec__item__button spec-order-btn">Заказать</div>
                                <div class="section-spec__item__action">{$offer.dateUntil}</div>
                            </div>
                        </div>
                    </div>
                </div>
            {/foreach}
        </div>
    </div>
</section>