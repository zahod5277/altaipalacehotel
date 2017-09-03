<section class="c-opinion">
    <section class="wrap">
        <div class="two-column">
            <div class="two-column__item">
                <div class="c-opinion__name">{$_pls['tv.guestName']}</div>
                <div class="c-opinion__item">
                    <div>Цель Поездки:</div>
                    <div>{$_pls['tv.travelPurpose']}</div>
                </div>
                <div class="c-opinion__item">
                    <div>Приехал:</div>
                    <div>Из {$_pls['tv.city']}</div>
                </div>
                <div class="c-opinion__item">
                    <div>Останавливался у нас:</div>
                    <div>{$_pls['tv.incomingDate']}</div>
                </div>
                <div class="c-opinion__item">
                    <div class="c-rating c-rating_4"><span class="icon-rating"><svg xmlns="http://www.w3.org/2000/svg" viewbox="0 0 16 17"><path d="M15.85 6.7a.28.28 0 0 0-.23-.18l-5.13-.74-2.3-4.62a.28.28 0 0 0-.51 0l-2.3 4.62-5.14.74A.28.28 0 0 0 .1 7l3.71 3.6-.87 5.07c-.02.1.02.21.11.28.09.06.2.07.3.02l4.6-2.4 4.59 2.4a.28.28 0 0 0 .41-.3l-.88-5.08L15.78 7c.08-.07.1-.18.07-.28z"></path></svg></span>
                        <span
                            class="icon-rating">
                            <svg xmlns="http://www.w3.org/2000/svg" viewbox="0 0 16 17">
                                <path d="M15.85 6.7a.28.28 0 0 0-.23-.18l-5.13-.74-2.3-4.62a.28.28 0 0 0-.51 0l-2.3 4.62-5.14.74A.28.28 0 0 0 .1 7l3.71 3.6-.87 5.07c-.02.1.02.21.11.28.09.06.2.07.3.02l4.6-2.4 4.59 2.4a.28.28 0 0 0 .41-.3l-.88-5.08L15.78 7c.08-.07.1-.18.07-.28z"></path>
                            </svg>
                        </span><span class="icon-rating"><svg xmlns="http://www.w3.org/2000/svg" viewbox="0 0 16 17"><path d="M15.85 6.7a.28.28 0 0 0-.23-.18l-5.13-.74-2.3-4.62a.28.28 0 0 0-.51 0l-2.3 4.62-5.14.74A.28.28 0 0 0 .1 7l3.71 3.6-.87 5.07c-.02.1.02.21.11.28.09.06.2.07.3.02l4.6-2.4 4.59 2.4a.28.28 0 0 0 .41-.3l-.88-5.08L15.78 7c.08-.07.1-.18.07-.28z"></path></svg></span>
                        <span
                            class="icon-rating">
                            <svg xmlns="http://www.w3.org/2000/svg" viewbox="0 0 16 17">
                                <path d="M15.85 6.7a.28.28 0 0 0-.23-.18l-5.13-.74-2.3-4.62a.28.28 0 0 0-.51 0l-2.3 4.62-5.14.74A.28.28 0 0 0 .1 7l3.71 3.6-.87 5.07c-.02.1.02.21.11.28.09.06.2.07.3.02l4.6-2.4 4.59 2.4a.28.28 0 0 0 .41-.3l-.88-5.08L15.78 7c.08-.07.1-.18.07-.28z"></path>
                            </svg>
                        </span><span class="icon-rating"><svg xmlns="http://www.w3.org/2000/svg" viewbox="0 0 16 17"><path d="M15.85 6.7a.28.28 0 0 0-.23-.18l-5.13-.74-2.3-4.62a.28.28 0 0 0-.51 0l-2.3 4.62-5.14.74A.28.28 0 0 0 .1 7l3.71 3.6-.87 5.07c-.02.1.02.21.11.28.09.06.2.07.3.02l4.6-2.4 4.59 2.4a.28.28 0 0 0 .41-.3l-.88-5.08L15.78 7c.08-.07.1-.18.07-.28z"></path></svg></span>
                    </div>
                </div>
            </div>
            <div class="two-column__item">
                <div class="c-opinion__title">
                    <h3>{$longtitle}</h3>
                </div>
                <div class="c-opinion__description">
                    {$content}
                </div>
                {if $_pls['tv.iRecommended']==1}
                <div class="c-opinion__result">Да, я рекомендую этот отель.</div>
                {/if}
                {$_modx->runSnippet('@FILE:snippets/getShareLinks.php',[
                    'resource' => $id,
                    'tpl' => '@FILE:chunks/guestbook/guestOpinion.share.tpl'
                ])}
            </div>
        </div>
    </section>
</section>
{if $_pls['tv.hotelAnswer']?}
<section class="wrap">
    <div class="c-answer">
        <div class="c-answer__title">ответ</div>
        <div class="c-answer__description">
            {$_pls['tv.hotelAnswer']}
        </div>
    </div>
</section>
{/if}