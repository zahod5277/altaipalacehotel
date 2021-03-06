<section class="section-newsbelt">
    <div class="wrap">
        <div class="section-newsbelt__item section-newsbelt__item_one">
            <p class="section-newsbelt__item__hash">#altaipalacehotel</p>
            <h3 class="section-newsbelt__item__title">Присоединяйтесь<span><br> к Алтай Пэлас</span></h3>
            <div class="section-newsbelt__item__social">
                {if $_modx->config.vkLink?}
                    <a href="{$_modx->config.vkLink}" target="_blank">
                        <img src="assets/template/images/svg/icon-vk.svg" class="section-newsbelt__item__social-icon">
                    </a>
                {/if}
                {if $_modx->config.facebookLink?}
                    <a href="{$_modx->config.facebookLink}" target="_blank">
                        <img src="assets/template/images/svg/icon-fb.svg" class="section-newsbelt__item__social-icon">
                    </a>
                {/if}
                {if $_modx->config.twitterLink?}
                    <a href="https://twitter.com/{$_modx->config.twitterLink}" target="_blank">
                        <img src="assets/template/images/svg/icon-twitter.svg" class="section-newsbelt__item__social-icon">
                    </a>
                {/if}
                {if $_modx->config.instagramLink?}
                    <a href="https://www.instagram.com/{$_modx->config.instagramLink}" target="_blank">
                        <img src="assets/template/images/svg/icon-insta.svg" class="section-newsbelt__item__social-icon">
                    </a>
                {/if}
                {if $_modx->config.youtubeLink?}
                    <a href="{$_modx->config.youtubeLink}" target="_blank">
                        <img src="assets/template/images/svg/icon-youtube.svg" class="section-newsbelt__item__social-icon">
                    </a>
                {/if}
            </div>
        </div>
        {$_modx->runSnippet('@FILE:snippets/getRibbon.php',[
            'instaLimit' => 3,
            'instaLogin' => $_modx->config.instagramLink,
            'twitterLogin' => $_modx->config.twitterLink,
            'twittLimit' => 1,
            'tpl' => '@FILE:chunks/common/newsbelt.row.tpl'
       ])}
    </div>
</section>