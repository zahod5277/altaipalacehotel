<div class="full-width full-width_reverse">
    <div class="filter-light"></div>
    <section class="wrap">
        <div class="three-column">
            <div class="three-column__item">
                <div class="c-rating c-rating_4">
                    <span class="icon-rating">
                        <svg xmlns="http://www.w3.org/2000/svg" viewbox="0 0 16 17"><path d="M15.85 6.7a.28.28 0 0 0-.23-.18l-5.13-.74-2.3-4.62a.28.28 0 0 0-.51 0l-2.3 4.62-5.14.74A.28.28 0 0 0 .1 7l3.71 3.6-.87 5.07c-.02.1.02.21.11.28.09.06.2.07.3.02l4.6-2.4 4.59 2.4a.28.28 0 0 0 .41-.3l-.88-5.08L15.78 7c.08-.07.1-.18.07-.28z"></path>
                        </svg>
                    </span>
                    <span class="icon-rating">
                        <svg xmlns="http://www.w3.org/2000/svg" viewbox="0 0 16 17">
                            <path d="M15.85 6.7a.28.28 0 0 0-.23-.18l-5.13-.74-2.3-4.62a.28.28 0 0 0-.51 0l-2.3 4.62-5.14.74A.28.28 0 0 0 .1 7l3.71 3.6-.87 5.07c-.02.1.02.21.11.28.09.06.2.07.3.02l4.6-2.4 4.59 2.4a.28.28 0 0 0 .41-.3l-.88-5.08L15.78 7c.08-.07.1-.18.07-.28z"></path>
                        </svg>
                    </span>
                    <span class="icon-rating">
                        <svg xmlns="http://www.w3.org/2000/svg" viewbox="0 0 16 17">
                            <path d="M15.85 6.7a.28.28 0 0 0-.23-.18l-5.13-.74-2.3-4.62a.28.28 0 0 0-.51 0l-2.3 4.62-5.14.74A.28.28 0 0 0 .1 7l3.71 3.6-.87 5.07c-.02.1.02.21.11.28.09.06.2.07.3.02l4.6-2.4 4.59 2.4a.28.28 0 0 0 .41-.3l-.88-5.08L15.78 7c.08-.07.1-.18.07-.28z"></path></svg></span>
                    <span
                        class="icon-rating">
                        <svg xmlns="http://www.w3.org/2000/svg" viewbox="0 0 16 17">
                            <path d="M15.85 6.7a.28.28 0 0 0-.23-.18l-5.13-.74-2.3-4.62a.28.28 0 0 0-.51 0l-2.3 4.62-5.14.74A.28.28 0 0 0 .1 7l3.71 3.6-.87 5.07c-.02.1.02.21.11.28.09.06.2.07.3.02l4.6-2.4 4.59 2.4a.28.28 0 0 0 .41-.3l-.88-5.08L15.78 7c.08-.07.1-.18.07-.28z"></path>
                        </svg>
                    </span>
                    <span class="icon-rating"><svg xmlns="http://www.w3.org/2000/svg" viewbox="0 0 16 17"><path d="M15.85 6.7a.28.28 0 0 0-.23-.18l-5.13-.74-2.3-4.62a.28.28 0 0 0-.51 0l-2.3 4.62-5.14.74A.28.28 0 0 0 .1 7l3.71 3.6-.87 5.07c-.02.1.02.21.11.28.09.06.2.07.3.02l4.6-2.4 4.59 2.4a.28.28 0 0 0 .41-.3l-.88-5.08L15.78 7c.08-.07.1-.18.07-.28z"></path></svg></span>
                </div>
                <span class="c-rating-number">4,3 из 5</span>
            </div>
            <div class="three-column__item">
                <div class="c-progress">
                    <span class="c-progress__desc"><strong>85%</strong>&nbsp; гостей рекомендуют наш отель</span>
                </div>
            </div>
            <div class="three-column__item">
                <span class="c-progress__desc c-progress__desc_button">написать отзыв</span>
            </div>
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