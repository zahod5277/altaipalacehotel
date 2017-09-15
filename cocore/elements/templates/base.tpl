<!DOCTYPE html>
<html>
    {block 'HEAD'}
        {include 'file:chunks/common/head.tpl'}
    {/block}
    <body>
        {block 'HEADER'}
            {include 'file:chunks/common/header.tpl'}
            {include 'file:chunks/booking/bookingHeaderModal.tpl'}
        {/block}
        {block 'CONTENT'}
        {/block}
        {block 'FOOTER'}
            {include 'file:chunks/common/newsbelt.tpl'}
            {include 'file:chunks/common/footer.tpl'}
        {/block}
        {block 'SCRIPTS'}
            {include 'file:chunks/common/scripts.tpl'}
        {/block}
        {block 'GA'}
            <script>
                (function (i, s, o, g, r, a, m) {
                    i['GoogleAnalyticsObject'] = r;
                    i[r] = i[r] || function () {
                        (i[r].q = i[r].q || []).push(arguments)
                    }, i[r].l = 1 * new Date();
                    a = s.createElement(o),
                            m = s.getElementsByTagName(o)[0];
                    a.async = 1;
                    a.src = g;
                    m.parentNode.insertBefore(a, m)
                })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');

                ga('create', 'UA-106514415-1', 'auto');
                ga('send', 'pageview');

            </script>
        {/block}
    </body>

</html>