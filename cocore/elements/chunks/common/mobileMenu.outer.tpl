<div class="wrap no-arrow">
    <nav class="header__mobile__menu">
        <ul class="header__mobile__menu-items">
            {$wrapper}
            <div class="header__mobile__buttons">
                <div class="header__mobile__button-wrap map-trigger">
                    <a href="#" class="header__item map-trigger" data-modal="map">
                        <img src="assets/template/images/svg/mobile-marker-map.svg" class="header__mobile__button">
                    </a>
                </div>
                <div class="header__mobile__button-wrap tour-trigger">
                    <a data-fancybox data-type="iframe" data-src="{$_modx->config.site_url}3D/vtour/tour.html" href="#">
                        <img src="assets/template/images/svg/mobile-icon-picture.svg" class="header__mobile__button">
                    </a>
                </div>
                <a href="tel: +7 (963) 512-52-72" class="header__mobile__button-wrap">
                    <img src="assets/template/images/svg/mobile-icon-telephone.svg" class="header__mobile__button">
                </a>
            </div>
        </ul>
    </nav>
</div>