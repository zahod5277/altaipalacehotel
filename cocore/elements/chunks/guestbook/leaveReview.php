<section style="display: flex;" class="popup__spec">
    <div class="popup__spec__wrap">
        <div class="popup__spec__header">
            <h3 class="popup__spec__title">оставить отзыв*</h3>
            <img src="assets/images/svg/button-close.svg" class="popup__spec__button-close">
        </div>
        <div class="popup__spec__body">
            <form class="popup__spec__form">
                <div class="popup__spec__form-wrap">
                    <input type="text" placeholder="Ваше имя" class="popup__spec__input">
                    <input type="text" placeholder="Дата заезда" class="popup__spec__input">
                </div>
                <div class="popup__spec__form-wrap">
                    <input type="text" placeholder="Контактный номер" class="popup__spec__input">
                    <input type="text" placeholder="E-mail" class="popup__spec__input">
                    <!--input(type="submit" value="заказать").popup__spec__input.popup__spec__input-button-->
                </div>
                <div class="popup__spec__form-wrap">
                    <input type="text" placeholder="Город вашего постоянного проживания" class="popup__spec__input popup__spec__input_not-last">
                </div>
                <p class="popup-checkbox">Цель вашей поездки
                </p><ul>
                    <li>
                        <input type="checkbox" name="weekend" value="weekend" id="weekend">
                        <label for="weekend">Выходные</label>
                    </li>
                    <li>
                        <input type="checkbox" name="wedding" value="wedding" id="wedding">
                        <label for="wedding">Свадьба</label>
                    </li>
                    <li>
                        <input type="checkbox" name="rest" value="rest" id="rest">
                        <label for="rest">Семейный отдых</label>
                    </li>
                    <li>
                        <input type="checkbox" name="work" value="work" id="work">
                        <label for="work">Рабочая</label>
                    </li>
                    <li>
                        <input type="checkbox" name="casino" value="casino" id="casino">
                        <label for="casino">В казино</label>
                    </li>
                    <li>
                        <input type="checkbox" name="concert" value="concert" id="concert">
                        <label for="concert">Посещение концерта</label>
                    </li>
                </ul>
                <p></p>
                <p class="popup__spec__form-wrap">
                    <textarea name="textarea" value="Ваш отзыв" placeholder="Ваш отзыв" class="popup__spec__input popup__spec__input_text-area"></textarea>
                </p>
                <div class="popup-checkbox">
                    <input type="checkbox" name="recomended" value="recomended" id="recomended">
                    <label for="recomended">Да, я рекомендую этот отель</label>
                </div>
                <div class="popup__spec__form-wrap popup__spec__form-wrap_guest">
                    <input type="submit" value="заказать" class="popup__spec__input popup__spec__input-button">
                </div>
                <p class="popup__spec__text">*Все поля обязательны к заполнению. Перед публикацией отзыва даминистрация отеля проверит ваши данные, для подтверждения пребывания в нашем отеле. Пожалуйста, укажите достоверную информацию во избежании недоразумений.</p>
            </form>
        </div>
    </div>
</section>