<section style="display:none;" class="popup__spec popup__guest" data-modal="leaveReview">
    <div class="popup__spec__wrap">
        <div class="popup__spec__header">
            <h3 class="popup__spec__title">оставить отзыв*</h3>
            <img src="assets/template/images/svg/button-close.svg" class="popup__spec__button-close">
        </div>
        {*email*}
        {$_modx->runSnippet('!AjaxForm',[
            'snippet' => 'FormIt',
            'form' => '@FILE:chunks/forms/guestbook.add.tpl',
            'hooks' => 'spam,FormItSaveForm,addReview,',
            'emailSubject' => 'Отзыв об отеле',
            'emailTo' => $_modx->config.form_email,
            'emailFrom' => $_modx->config.emailsender,
            'emailTpl' => 'review.email.tpl'
            'validate' => 'guestName:required',
            'validationErrorMessage' => '<h5>В форме содержатся ошибки!</h5>',
            'successMessage' => '<h5>Спасибо за ваш отзыв! Мы обязательно ответим на него!</h5>'
        ])}
    </div>
</section>