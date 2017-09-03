{*email,FormItSaveForm*}
{$_modx->runSnippet('!AjaxForm',[
    'snippet' => 'FormIt',
    'form' => '@FILE:chunks/forms/guestbook.add.tpl',
    'hooks' => 'spam,addReview,',
    'emailSubject' => 'Отзыв об отеле',
    'emailTo' => $_modx->config.form_email,
    'emailFrom' => $_modx->config.emailsender,
    'emailTpl' => 'review.email.tpl'
    'validate' => 'guestName:required',
    'validationErrorMessage' => '<h5>В форме содержатся ошибки!</h5>',
    'successMessage' => '<h5>Сообщение успешно отправлено</h5>'
])}