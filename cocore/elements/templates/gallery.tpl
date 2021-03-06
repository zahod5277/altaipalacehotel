{extends 'file:templates/base.tpl'}
{block 'CONTENT'}
    {include 'file:chunks/gallery/gallery.tpl'}
{/block}
{block 'SCRIPTS'}
    <script src="assets/template/scripts/libs/jquery/dist/jquery.min.js"></script>
    <script src="assets/template/scripts/libs/fancybox/jquery.fancybox.min.js"></script>
    <script src="assets/template/scripts/libs/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="assets/template/scripts/libs/anchor-js/anchor.min.js"></script>
    <script src="assets/template/scripts/sticky.js"></script>
    <script src="assets/template/scripts/libs/swiper/dist/js/swiper.jquery.min.js"></script>
    <script src="assets/template/scripts/main.js?{''|date_format:'%s'}"></script>
    <script src="//api-maps.yandex.ru/2.1/?lang=ru_RU" type="text/javascript"></script>
    <script src="assets/template/scripts/router.js?{''|date_format:'%s'}" type="text/javascript"></script>
{/block}