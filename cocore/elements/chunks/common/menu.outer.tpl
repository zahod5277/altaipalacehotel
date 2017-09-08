{switch $_modx->resource.template}
    {case 1,5,10,11}
    {var $border = ' header__bottom_no-border'}
    {case default}
    {var $border = ''}
{/switch}
<div id="menu__sticky" class="header__bottom{$border}">
    <div class="wrap no-arrow">
        <nav class="header__navigation">
            <ul class="header__navigation__items">
                {$wrapper}
                <div class="header__button__book">Забронировать номер</div>
            </ul>
        </nav>
    </div>
</div>
