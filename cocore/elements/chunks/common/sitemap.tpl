<ul class="sitemap">
    <li class="sitemap__level-1">
        <a href="{'1'|url}">Главная</a>
    </li>
    <li class="sitemap__level-1">
        <a href="{'2'|url}">Номера</a>
        {$_modx->runSnippet('pdoMenu',[
            'parents' => 2,
            'level' => 1,
            'tplOuter' => '@INLINE <ul>{$wrapper}</ul>',
            'tpl' => '@INLINE <li class="sitemap__level-2"><a href="{$uri}">{$pagetitle}</a></li>'
        ])}
    </li>
    <li class="sitemap__level-1">
        <a href="{'3'|url}">Ресторан</a>
    </li>
    </ul>
    <ul class="sitemap">
    <li class="sitemap__level-1">
        <a href="{'4'|url}">Галерея</a>
        {$_modx->runSnippet('pdoMenu',[
            'parents' => 4,
            'level' => 1,
            'tplOuter' => '@INLINE <ul>{$wrapper}</ul>',
            'tpl' => '@INLINE <li class="sitemap__level-2"><a href="{$uri}">{$pagetitle}</a></li>'
        ])}
    </li>
    <li class="sitemap__level-1">
        <a href="{'5'|url}">Развлечения</a>
        {$_modx->runSnippet('pdoMenu',[
            'parents' => 5,
            'level' => 1,
            'tplOuter' => '@INLINE <ul>{$wrapper}</ul>',
            'tpl' => '@INLINE <li class="sitemap__level-2"><a href="{$_modx->config.site_url}/{5|url}#fun_{$id}">{$pagetitle}</a></li>'
        ])}
    </li>
    </ul>
    <ul class="sitemap">
    <li class="sitemap__level-1">
        <a href="{'6'|url}">Акции</a>
    </li>
    <li class="sitemap__level-1">
        <a href="{'7'|url}">Гостевая книга</a>
    </li>
    <li class="sitemap__level-1">
        <a href="{'8'|url}">Контакты</a>
    </li>
</ul>