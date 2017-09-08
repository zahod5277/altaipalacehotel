{extends 'file:templates/base.tpl'}
{block 'CONTENT'}
    {include 'file:chunks/guestbook/guestbook.tpl'}
{/block}
{block 'SCRIPTS'}
    <script src="assets/template/scripts/libs/jquery/dist/jquery.min.js"></script>
    <script src="assets/template/scripts/libs/swiper/dist/js/swiper.jquery.min.js"></script>
    <script src="assets/template/scripts/sticky.js"></script>
    <script src="assets/template/scripts/libs/datetimepicker/jquery.datetimepicker.full.min.js"></script>
    <script src="assets/template/scripts/libs/combodate/combodate.js"></script>
    <script src="assets/template/scripts/main.js"></script>
{/block}