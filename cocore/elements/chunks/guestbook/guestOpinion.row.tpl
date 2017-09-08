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
                    <div style="display:block">{$_pls['tv.incomingDate']}</div>
                </div>
                <div class="c-opinion__item">
                    {$_modx->runSnippet('@FILE:snippets/getGuestAverageMark.php',[
                        'id' => $id,
                        'tpl' => '@FILE:chunks/guestbook/guestAverageMark.tpl',
                        'mode' => 'chunk'
                    ])}
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
</section>
{/if}