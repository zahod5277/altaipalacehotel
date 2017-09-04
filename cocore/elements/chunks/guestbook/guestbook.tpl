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
            <li><a href="#usual">Все отзывы</a>
            </li>
            <li><a href="#star">Звездные гости</a>
            </li>
        </ul>
    </div>
</section>
{$_modx->runSnippet('!pdoPage',[
    'parents' => 7,
    'resources' => '-26',
    'limit' => 2,
    'tpl' => '@FILE:chunks/guestbook/guestOpinion.row.tpl',
    'includeContent' => 1,
    'includeTVs' => 'city,guestName,incomingDate,iRecommended,starComfort,starFood,starPersonal,travelPurpose,hotelAnswer',
    'tplPage' => '@INLINE <li> <a href="{$href}">{$pageNo}</a></li>',
    'tplPageWrapper' => '@INLINE <div class="c-pagination"><ul>{$pages}</ul></div>',
    'tplPageActive' => '@INLINE <li class="current"><a href="{$href}">{$pageNo}</a></li>'
])}
{$_modx->getPlaceholder('page.nav')}