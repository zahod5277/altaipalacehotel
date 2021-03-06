{extends 'file:templates/base.tpl'}
{block 'CONTENT'}
    {include 'file:chunks/modal/specModal.tpl'}
    {include 'file:chunks/main/main.tpl'}
{/block}
{block 'SCRIPTS'}
    <script src="assets/template/scripts/libs/jquery/dist/jquery.min.js"></script>
    <script src="assets/template/scripts/libs/swiper/dist/js/swiper.min.js"></script>
    <script src="assets/template/scripts/libs/fancybox/jquery.fancybox.min.js"></script>
    <script src="assets/template/scripts/moment-timezone.js"></script>
    <script src="assets/template/scripts/libs/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="assets/template/scripts/libs/anchor-js/anchor.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.9.0/moment.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.9.0/locales.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment-timezone/0.3.0/moment-timezone.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment-timezone/0.3.0/moment-timezone-utils.min.js"></script>
    <script src="assets/template/scripts/sticky.js"></script>
    <script src="assets/template/scripts/front-clock.js"></script>
    <script src="assets/template/scripts/libs/slick/slick.min.js"></script>
    <script src="assets/template/scripts/main.js?{''|date_format:'%s'}"></script>
    <link rel="stylesheet" href="assets/template/scripts/libs/slick/slick.css"/>
    <link rel="stylesheet" href="assets/template/scripts/libs/slick/slick-theme.css"/>
    <script src="//api-maps.yandex.ru/2.1/?lang=ru_RU" type="text/javascript"></script>
    <script src="assets/template/scripts/router.js?{''|date_format:'%s'}" type="text/javascript"></script>
{/block}