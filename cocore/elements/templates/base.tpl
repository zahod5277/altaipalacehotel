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
    </body>

</html>