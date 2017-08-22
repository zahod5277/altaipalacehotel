<header class="header">
    <div class="wrap">
        <div class="header__top">
            <div class="header__mobile__buttons">
                <img src="assets/template/images/svg/gamburger.svg" class="header__mobile__gamburger">
                <img src="assets/template/images/svg/button-close-menu.svg" class="header__mobile__close">
            </div>
            <div class="header__items">
                <a href="#" class="header__item">
                    <img src="assets/template/images/svg/arrow-nav.svg" class="header__item__icon">
                    <div class="header__item__text">Схема проезда</div>
                </a>
                <a href="#" class="header__item">
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
                <a href="tel: +7 (963) 512-52-72" class="header__contact">
                    <img src="assets/template/images/svg/telephone.svg" class="header__contact__icon">
                    <div class="header__contact__text">+7 (800) 444-15-13</div>
                </a>
                <a href="tel: +7 (963) 512-52-72" class="header__contact">
                    <div class="header__contact__text">+7 (963) 512-52-72</div>
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
        'level' => 1,
        'tplOuter' => '@FILE:chunks/common/mobileMenu.outer.tpl',
        'tpl' => '@FILE:chunks/common/mobileMenu.row.tpl'
    ])}
</header>