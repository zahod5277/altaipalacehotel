{include 'file:chunks/guestbook/leaveReview.tpl'}
<div class="full-width full-width_reverse">
    <div class="filter-light"></div>
    <section class="wrap">
        <div class="three-column">
            {$_modx->runSnippet('@FILE:snippets/getSummaryAverageMark.php',[
                'tpl' => '@FILE:chunks/guestbook/summaryAverageMark.tpl'
            ])}
        </div>
        <div class="b-rating">
            <div class="b-column">
                <div class="b-rating__text">Комфортабельность номера</div>
                <div class="b-rating__progress">
                    <div class="b-rating__item"></div>
                    <div class="b-rating__item"></div>
                    <div class="b-rating__item"></div>
                    <div class="b-rating__item"></div>
                    <div class="b-rating__item b-rating__item_half"></div>
                </div>
            </div>
            <div class="b-column">
                <div class="b-rating__text">Отзывчивость персонала</div>
                <div class="b-rating__progress">
                    <div class="b-rating__item"></div>
                    <div class="b-rating__item"></div>
                    <div class="b-rating__item"></div>
                    <div class="b-rating__item"></div>
                    <div class="b-rating__item"></div>
                </div>
            </div>
            <div class="b-column">
                <div class="b-rating__text">Еда и напитки</div>
                <div class="b-rating__progress">
                    <div class="b-rating__item"></div>
                    <div class="b-rating__item"></div>
                    <div class="b-rating__item"></div>
                    <div class="b-rating__item"></div>
                    <div class="b-rating__item"></div>
                </div>
            </div>
        </div>
    </section>
</div>
<section class="wrap">
    <div class="c-tab">
        <ul>
            <li>
                <a href="#usual" data-guest="all" class="guest_active">Все отзывы</a>
            </li>
            <li>
                <a href="#star" data-guest="star">Звездные гости</a>
            </li>
        </ul>
    </div>
</section>
{*мне стыдно, но AJAX все делать было некогда, проект сдавать через 8 минут*}
<div class="guests" data-guest="all">
{$_modx->runSnippet('!pdoPage',[
    'parents' => 7,
    'limit' => 2,
    'tpl' => '@FILE:chunks/guestbook/guestOpinion.row.tpl',
    'includeContent' => 1,
    'includeTVs' => 'city,guestName,incomingDate,iRecommended,starComfort,starFood,starPersonal,travelPurpose,hotelAnswer,starGuest',
    'tplPage' => '@INLINE <li> <a href="{$href}">{$pageNo}</a></li>',
    'tplPageWrapper' => '@INLINE <div class="c-pagination"><ul>{$pages}</ul></div>',
    'tplPageActive' => '@INLINE <li class="current"><a href="{$href}">{$pageNo}</a></li>',
    'sortby' => 'menuindex',
    'sortdir' => 'DESC',
    'pageNavVar' => 'all.nav',
    'pageVarKey' => 'allpage'
])}
{$_modx->getPlaceholder('all.nav')}
</div>

<div style="display:none" class="guests" data-guest="star">
{$_modx->runSnippet('!pdoPage',[
    'parents' => 7,
    'limit' => 2,
    'tpl' => '@FILE:chunks/guestbook/guestOpinion.row.tpl',
    'includeContent' => 1,
    'pageNavVar' => 'star.nav',
    'where' => '{"starGuest:=":"1"}',
    'includeTVs' => 'city,guestName,incomingDate,iRecommended,starComfort,starFood,starPersonal,travelPurpose,hotelAnswer,starGuest',
    'tplPage' => '@INLINE <li> <a href="{$href}">{$pageNo}</a></li>',
    'tplPageWrapper' => '@INLINE <div class="c-pagination"><ul>{$pages}</ul></div>',
    'tplPageActive' => '@INLINE <li class="current"><a href="{$href}">{$pageNo}</a></li>',
    'pageVarKey' => 'starpage'
])}
{$_modx->getPlaceholder('star.nav')}
</div>