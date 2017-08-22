<section class="section-newsbelt">
    <div class="wrap">
        <div class="section-newsbelt__item section-newsbelt__item_one">
            <p class="section-newsbelt__item__hash">#altaipalacehotel</p>
            <h3 class="section-newsbelt__item__title">Присоединяйтесь<span><br> к Алтай Пэлас</span></h3>
            <div class="section-newsbelt__item__social">
                <img src="assets/template/images/svg/icon-vk.svg" class="section-newsbelt__item__social-icon">
                <img src="assets/template/images/svg/icon-fb.svg" class="section-newsbelt__item__social-icon">
                <img src="assets/template/images/svg/icon-twitter.svg" class="section-newsbelt__item__social-icon">
                <img src="assets/template/images/svg/icon-insta.svg" class="section-newsbelt__item__social-icon">
                <img src="assets/template/images/svg/icon-youtube.svg" class="section-newsbelt__item__social-icon">
            </div>
        </div>
        {$_modx->runSnippet('@FILE:snippets/getRibbon.php',[
            'instaLimit' => 4,
            'instaLogin' => 'zahod5277',
            'twitterLogin' => 'zahod5277',
            'twittLimit' => 2,
            'tpl' => '@FILE:chunks/common/newsbelt.row.tpl'
       ])}
    </div>
</section>