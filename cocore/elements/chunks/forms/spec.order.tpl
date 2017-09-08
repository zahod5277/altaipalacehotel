<section style="display:none;" class="popup__spec" id="specOrder">
    <div class="popup__spec__wrap">
        <div class="popup__spec__header">
            <h3 class="popup__spec__title">Все включено</h3>
            <img src="assets/template/images/svg/button-close.svg" class="popup__spec__button-close">
        </div>
        <div class="popup__spec__body">
            <form class="popup__spec__form ajax_form" action="{$_modx->resource.id|url}" method="POST">
                <div class="popup__spec__form-wrap">
                    <input type="text" placeholder="Ваше имя" name="name" class="popup__spec__input">
                    <input type="text" placeholder="Дата" name="date" class="popup__spec__input">
                </div>
                <div class="popup__spec__form-wrap">
                    <input type="hidden" name="specItem" value="">
                    <input type="text" name="phone" placeholder="Контактный номер" class="popup__spec__input">
                    <input type="submit" value="заказать" class="popup__spec__input popup__spec__input-button">
                </div>
            </form>
            <p class="popup__spec__text">
                Оставьте онлайн заявку на предложение и наши специалисты свяжутся с Вами в ближайшее время для уточнения дополнительной информации и подтверждаения заказа.
            </p>
        </div>
    </div>
</section>