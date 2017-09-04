<div class="box-shadow-top">
    <section class="wrap">
        <div class="m-about">
            <div class="m-about__title">
                <h2>Отель со вкусом</h2>
            </div>
            <div class="m-about__description">
                {$_modx->resource.content}
                <div class="m-about__bottom">
                    <span>
                        Бронь столика: 
                        <a href="tel:+88005553535">8 (800) 500-60-60</a>
                    </span>
                    <span>
                        Аренда зала: 
                        <a href="mailto:info@altaipalace.ru">info@altaipalace.ru</a>
                    </span>
                </div>
            </div>
        </div>
    </section>
</div>
<div class="box-shadow-top">
    {var $menus = $_modx->resource.menuCategory|fromJSON}
    {foreach $menus as $menu}
        <section class="m-menu m-grey">
            <div class="m-menu__title">
                <h3>{$menu.title}</h3>
            </div>
            <div class="m-description">
                <div class="wrap">
                    <div class="m-column">
                        {*не знаю, как правильно реализовать без быдло кодинга*}
                        {$_modx->runSnippet('@FILE:snippets/menuDivider.php',[
                        'json' => $menu.param,
                        'tpl' => '@FILE:chunks/restaurant/restaurant.menu.row.tpl',
                        'tplOuter' => '@FILE:chunks/restaurant/restaurant.menu.outer.tpl'
                    ])}
                    </div>
                </div>
            </div>
        </section>
    {/foreach}
</div>