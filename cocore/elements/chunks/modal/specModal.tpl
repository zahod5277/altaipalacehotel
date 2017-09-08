{$_modx->runSnippet('!AjaxForm',[
    'snippet' => 'FormIt',
    'form' => '@FILE:chunks/forms/spec.order.tpl',
    'hooks' => 'spam,email,FormItSaveForm',
    'emailSubject' => 'Заказ спец.предложения',
    'emailTo' => $_modx->config.form_email,
    'emailFrom' => $_modx->config.emailsender,
    'emailTpl' => 'spec.email.tpl'
    'validate' => 'name:required,phone:required',
    'validationErrorMessage' => '<h5>В форме содержатся ошибки!</h5>',
    'successMessage' => '<h5>Ваша заявка принята! Скоро мы свяжемся с вами для подтверждения заказа.</h5>'
])}