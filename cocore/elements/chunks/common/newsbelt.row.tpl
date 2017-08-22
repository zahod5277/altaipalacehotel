{switch $type}
{case 'tweet'}
<a data-type="social" href="https://twitter.com/zahod5277/status/{$id}" class="section-newsbelt__item section-newsbelt__item_tree">
    <img src="assets/template/images/svg/icon-twitter-active.svg" class="section-newsbelt__item__social-icon">
    <p class="section-newsbelt__item__text">{$text}</p>
    {*<p class="section-newsbelt__item__hash">#алтайпэласотель #ХорошийДень #Отдыхаем</p>*}
    <p class="section-newsbelt__item__date">@altaipalaceHOTEL • {$time|dateago}</p>
</a>
{case 'instagram'}
<a data-type="social" target="_blank" href="https://www.instagram.com/{$instalogin}" style="background-image: url('{$img}');" class="section-newsbelt__item section-newsbelt__item_two">
    <img src="assets/template/images/svg/icon-insta-white.svg" class="section-newsbelt__item__social-icon">
</a>
{/switch}