{*Сначала нарисовали плохие макеты, а теперь приходится изголяться и 
то на одной странице полосочку убирать, то на другой добавлять, и в общем это ужас какой-то.*}
{switch $_modx->resource.id}
    {case 1,3,8,7}
    {var $class=' no-border-bottom'}
    {case default}
    {var $class=''}
{/switch}
<header class="header{$class}">
    <section style="display:none;" class="popup__spec popup__spec_map" data-modal="map">
        <div class="popup__spec__wrap">
            <div class="popup__spec__header">
                <h3 class="popup__spec__title">Cхема проезда</h3>
                <img src="assets/template/images/svg/button-close.svg" class="popup__spec__button-close">
            </div>
            <div class="popup__spec__body">
                <div id="mapcontactsPopup">
                    <div id="map" style="width: 100%;min-height: 500px;"></div>
                    <div id="list"></div>
                </div>
            </div>
        </div>
    </section>
    <div class="wrap">
        <div class="header__top">
            <div class="header__mobile__buttons">
                <img src="assets/template/images/svg/gamburger.svg" class="header__mobile__gamburger">
                <img src="assets/template/images/svg/button-close-menu.svg" class="header__mobile__close">
            </div>
            <div class="header__items">
                <a href="#" class="header__item map-trigger" data-modal="map">
                    <img src="assets/template/images/svg/arrow-nav.svg" class="header__item__icon">
                    <div class="header__item__text">Схема проезда</div>
                </a>
                <a data-fancybox data-type="iframe" data-src="{$_modx->config.site_url}3D/vtour/tour.html" href="#" class="header__item tour-trigger">
                    <img src="assets/template/images/svg/icon-picture.svg" class="header__item__icon">
                    <div class="header__item__text">Виртуальный тур</div>
                </a>
            </div>
            {if $_modx->resource.id!=1}
                <a href="{'1'|url}" title="На главную">
                    <img src="assets/template/images/svg/logo.svg" class="header__logo">
                </a>
            {else}
                <img src="assets/template/images/svg/logo.svg" class="header__logo">
            {/if}
            <div class="header__contacts">
                {var $phones = $_modx->config.headerNumber|split}
                <a href="tel:{$phones[0]}" class="header__contact">
                    <img src="assets/template/images/svg/telephone.svg" class="header__contact__icon">
                    <div class="header__contact__text">{$phones[0]}</div>
                </a>
                <a href="tel:{$phones[1]}" class="header__contact">
                    <div class="header__contact__text">{$phones[1]}</div>
                </a>
            </div>
            <img src="assets/template/images/svg/calendar.svg" class="header__mobile__calendar">
        </div>
    </div>
    {$_modx->runSnippet('pdoMenu',[
        'parents' => 0,
        'resources' => '-1',
        'level' => 1,
        'tplOuter' => '@FILE:chunks/common/menu.outer.tpl',
        'tpl' => '@FILE:chunks/common/menu.row.tpl',
        'rowClass' => 'header__navigation__item',
        'hereClass' => 'header__navigation__item_active'
    ])}
    {$_modx->runSnippet('pdoMenu',[
        'parents' => 0,
        'resources' => -1,
        'level' => 1,
        'tplOuter' => '@FILE:chunks/common/mobileMenu.outer.tpl',
        'tpl' => '@FILE:chunks/common/mobileMenu.row.tpl'
    ])}
</header>