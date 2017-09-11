{extends 'file:templates/base.tpl'}
{block 'CONTENT'}
    {include 'file:chunks/modal/specModal.tpl'}
    {include 'file:chunks/spec/spec.tpl'}
{/block}
{block 'SCRIPTS'}
    <script src="assets/template/scripts/libs/jquery/dist/jquery.min.js"></script>
    <script src="assets/template/scripts/libs/swiper/dist/js/swiper.jquery.min.js"></script>
    <script src="assets/template/scripts/sticky.js"></script>
    <script src="assets/template/scripts/main.js?{''|date_format:'%s'}"></script>
{/block}