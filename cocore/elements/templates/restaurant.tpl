{extends 'file:templates/base.tpl'}
{block 'CONTENT'}
    {include 'file:chunks/restaurant/restaurant.tpl'}
{/block}
{block 'scripts'}
    <script src="assets/scripts/libs/jquery/dist/jquery.min.js"></script>
    <script src="assets/scripts/libs/swiper/dist/js/swiper.jquery.min.js"></script>
    <script src="assets/scripts/sticky.js"></script>
    <script src="assets/scripts/libs/combodate/moment.js"></script>
    <script src="assets/scripts/libs/combodate/combodate.js"></script>
    <script src="assets/scripts/main.js"></script>
{/block}