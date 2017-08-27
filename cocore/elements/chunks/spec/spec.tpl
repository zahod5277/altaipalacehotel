<section class="section-breadcrums">
    <div class="wrap">
        <a href="#" class="section-breadcrums__item section-breadcrums__item_active">Все вместе</a>
        <a href="#" class="section-breadcrums__item">Горячие предложения</a>
        <a href="#" class="section-breadcrums__item">Долгосрочные</a>
    </div>
</section>
{var $offers = $_modx->resource.specOffer|fromJSON}
<section class="section-spec">
    <div class="wrap">
        <div class="section-spec__items">
            {foreach $offers as $offer}
                <div class="section-spec__item" data-type="{$offer.type}">
                    <div class="section-spec__item__wrap">
                        <img src="{$offer.image}" class="section-spec__item__image">
                        <div class="section-spec__item__content">
                            <h4 class="section-spec__item__title">{$offer.title}</h4>
                            <p class="section-spec__item__text">
                                {$offer.descr}
                            </p>
                            <div class="section-spec__item__button-wrap">
                                <div class="section-spec__item__button">Заказать</div>
                                <div class="section-spec__item__action">{$offer.dateUntil}</div>
                            </div>
                        </div>
                    </div>
                </div>
            {/foreach}
        </div>
    </div>
</section>