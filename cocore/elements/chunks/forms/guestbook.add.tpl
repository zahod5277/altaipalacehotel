<div class="popup__spec__body">
    <form class="popup__spec__form ajax_form" method="POST" action="{$_modx->resource.id|url}">
        <div class="popup__spec__form-wrap">
            <input type="text" name="guestName" placeholder="Ваше имя" class="popup__spec__input">
            <input type="text" name="incomingDate" id="guestDatepicker" placeholder="Дата заезда" class="popup__spec__input">
        </div>
        <div class="popup__spec__form-wrap">
            <input type="text" name="contactNumber" placeholder="Контактный номер" class="popup__spec__input">
            <input type="text" name="eMail" placeholder="E-mail" class="popup__spec__input">
        </div>
        <div class="popup__spec__form-wrap">
            <input type="text" name="city" placeholder="Город вашего постоянного проживания" class="popup__spec__input popup__spec__input_not-last">
        </div>
        <p class="popup-checkbox">Цель вашей поездки
        </p>
        <ul class="c-checkboxes">
            <li>
                <input type="checkbox" name="travelPurpose" value="Выходные" id="weekend">
                <label for="weekend">Выходные</label>
            </li>
            <li>
                <input type="checkbox" name="travelPurpose" value="Свадьба" id="wedding">
                <label for="wedding">Свадьба</label>
            </li>
            <li>
                <input type="checkbox" name="travelPurpose" value="Семейный отдых" id="rest">
                <label for="rest">Семейный отдых</label>
            </li>
            <li>
                <input type="checkbox" name="travelPurpose" value="Рабочая" id="work">
                <label for="work">Рабочая</label>
            </li>
            <li>
                <input type="checkbox" name="travelPurpose" value="В казино" id="casino">
                <label for="casino">В казино</label>
            </li>
            <li>
                <input type="checkbox" name="travelPurpose" value="Посещение концерта" id="concert">
                <label for="concert">Посещение концерта</label>
            </li>
        </ul>
        <div class="three-column three-column_input guestStarsForm">
            <div class="three-column__item">
                <div class="c-rating c-rating_input">
                    <span class="icon-rating" data-rating="1">
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 17"><path d="M15.85 6.7a.28.28 0 0 0-.23-.18l-5.13-.74-2.3-4.62a.28.28 0 0 0-.51 0l-2.3 4.62-5.14.74A.28.28 0 0 0 .1 7l3.71 3.6-.87 5.07c-.02.1.02.21.11.28.09.06.2.07.3.02l4.6-2.4 4.59 2.4a.28.28 0 0 0 .41-.3l-.88-5.08L15.78 7c.08-.07.1-.18.07-.28z"></path></svg>
                    </span>
                    <span class="icon-rating" data-rating="2">
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 17">
                        <path d="M15.85 6.7a.28.28 0 0 0-.23-.18l-5.13-.74-2.3-4.62a.28.28 0 0 0-.51 0l-2.3 4.62-5.14.74A.28.28 0 0 0 .1 7l3.71 3.6-.87 5.07c-.02.1.02.21.11.28.09.06.2.07.3.02l4.6-2.4 4.59 2.4a.28.28 0 0 0 .41-.3l-.88-5.08L15.78 7c.08-.07.1-.18.07-.28z"></path>
                        </svg>
                    </span>
                    <span class="icon-rating" data-rating="3">
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 17"><path d="M15.85 6.7a.28.28 0 0 0-.23-.18l-5.13-.74-2.3-4.62a.28.28 0 0 0-.51 0l-2.3 4.62-5.14.74A.28.28 0 0 0 .1 7l3.71 3.6-.87 5.07c-.02.1.02.21.11.28.09.06.2.07.3.02l4.6-2.4 4.59 2.4a.28.28 0 0 0 .41-.3l-.88-5.08L15.78 7c.08-.07.1-.18.07-.28z"></path></svg>
                    </span>
                    <span class="icon-rating" data-rating="4">
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 17">
                        <path d="M15.85 6.7a.28.28 0 0 0-.23-.18l-5.13-.74-2.3-4.62a.28.28 0 0 0-.51 0l-2.3 4.62-5.14.74A.28.28 0 0 0 .1 7l3.71 3.6-.87 5.07c-.02.1.02.21.11.28.09.06.2.07.3.02l4.6-2.4 4.59 2.4a.28.28 0 0 0 .41-.3l-.88-5.08L15.78 7c.08-.07.1-.18.07-.28z"></path>
                        </svg>
                    </span>
                    <span class="icon-rating" data-rating="5">
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 17"><path d="M15.85 6.7a.28.28 0 0 0-.23-.18l-5.13-.74-2.3-4.62a.28.28 0 0 0-.51 0l-2.3 4.62-5.14.74A.28.28 0 0 0 .1 7l3.71 3.6-.87 5.07c-.02.1.02.21.11.28.09.06.2.07.3.02l4.6-2.4 4.59 2.4a.28.28 0 0 0 .41-.3l-.88-5.08L15.78 7c.08-.07.1-.18.07-.28z"></path></svg>
                    </span>
                </div>
                <span>Комфортабельность номера</span>
                <input type="hidden" name="starComfort" value="3">
            </div>
            <div class="three-column__item">
                <div class="c-rating c-rating_input">
                    <span class="icon-rating" data-rating="1">
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 17"><path d="M15.85 6.7a.28.28 0 0 0-.23-.18l-5.13-.74-2.3-4.62a.28.28 0 0 0-.51 0l-2.3 4.62-5.14.74A.28.28 0 0 0 .1 7l3.71 3.6-.87 5.07c-.02.1.02.21.11.28.09.06.2.07.3.02l4.6-2.4 4.59 2.4a.28.28 0 0 0 .41-.3l-.88-5.08L15.78 7c.08-.07.1-.18.07-.28z"></path></svg>
                    </span>
                    <span class="icon-rating" data-rating="2">
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 17">
                        <path d="M15.85 6.7a.28.28 0 0 0-.23-.18l-5.13-.74-2.3-4.62a.28.28 0 0 0-.51 0l-2.3 4.62-5.14.74A.28.28 0 0 0 .1 7l3.71 3.6-.87 5.07c-.02.1.02.21.11.28.09.06.2.07.3.02l4.6-2.4 4.59 2.4a.28.28 0 0 0 .41-.3l-.88-5.08L15.78 7c.08-.07.1-.18.07-.28z"></path>
                        </svg>
                    </span>
                    <span class="icon-rating" data-rating="3">
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 17"><path d="M15.85 6.7a.28.28 0 0 0-.23-.18l-5.13-.74-2.3-4.62a.28.28 0 0 0-.51 0l-2.3 4.62-5.14.74A.28.28 0 0 0 .1 7l3.71 3.6-.87 5.07c-.02.1.02.21.11.28.09.06.2.07.3.02l4.6-2.4 4.59 2.4a.28.28 0 0 0 .41-.3l-.88-5.08L15.78 7c.08-.07.1-.18.07-.28z"></path></svg>
                    </span>
                    <span class="icon-rating" data-rating="4">
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 17">
                        <path d="M15.85 6.7a.28.28 0 0 0-.23-.18l-5.13-.74-2.3-4.62a.28.28 0 0 0-.51 0l-2.3 4.62-5.14.74A.28.28 0 0 0 .1 7l3.71 3.6-.87 5.07c-.02.1.02.21.11.28.09.06.2.07.3.02l4.6-2.4 4.59 2.4a.28.28 0 0 0 .41-.3l-.88-5.08L15.78 7c.08-.07.1-.18.07-.28z"></path>
                        </svg>
                    </span>
                    <span class="icon-rating" data-rating="5">
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 17"><path d="M15.85 6.7a.28.28 0 0 0-.23-.18l-5.13-.74-2.3-4.62a.28.28 0 0 0-.51 0l-2.3 4.62-5.14.74A.28.28 0 0 0 .1 7l3.71 3.6-.87 5.07c-.02.1.02.21.11.28.09.06.2.07.3.02l4.6-2.4 4.59 2.4a.28.28 0 0 0 .41-.3l-.88-5.08L15.78 7c.08-.07.1-.18.07-.28z"></path></svg>
                    </span>
                </div>
                <span>Отзывчивость персонала</span>
                <input type="hidden" name="starPersonal" value="3">
            </div>
            <div class="three-column__item">
                <div class="c-rating c-rating_input">
                    <span class="icon-rating" data-rating="1">
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 17"><path d="M15.85 6.7a.28.28 0 0 0-.23-.18l-5.13-.74-2.3-4.62a.28.28 0 0 0-.51 0l-2.3 4.62-5.14.74A.28.28 0 0 0 .1 7l3.71 3.6-.87 5.07c-.02.1.02.21.11.28.09.06.2.07.3.02l4.6-2.4 4.59 2.4a.28.28 0 0 0 .41-.3l-.88-5.08L15.78 7c.08-.07.1-.18.07-.28z"></path></svg>
                    </span>
                    <span class="icon-rating" data-rating="2">
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 17">
                        <path d="M15.85 6.7a.28.28 0 0 0-.23-.18l-5.13-.74-2.3-4.62a.28.28 0 0 0-.51 0l-2.3 4.62-5.14.74A.28.28 0 0 0 .1 7l3.71 3.6-.87 5.07c-.02.1.02.21.11.28.09.06.2.07.3.02l4.6-2.4 4.59 2.4a.28.28 0 0 0 .41-.3l-.88-5.08L15.78 7c.08-.07.1-.18.07-.28z"></path>
                        </svg>
                    </span>
                    <span class="icon-rating" data-rating="3">
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 17"><path d="M15.85 6.7a.28.28 0 0 0-.23-.18l-5.13-.74-2.3-4.62a.28.28 0 0 0-.51 0l-2.3 4.62-5.14.74A.28.28 0 0 0 .1 7l3.71 3.6-.87 5.07c-.02.1.02.21.11.28.09.06.2.07.3.02l4.6-2.4 4.59 2.4a.28.28 0 0 0 .41-.3l-.88-5.08L15.78 7c.08-.07.1-.18.07-.28z"></path></svg>
                    </span>
                    <span class="icon-rating" data-rating="4">
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 17">
                        <path d="M15.85 6.7a.28.28 0 0 0-.23-.18l-5.13-.74-2.3-4.62a.28.28 0 0 0-.51 0l-2.3 4.62-5.14.74A.28.28 0 0 0 .1 7l3.71 3.6-.87 5.07c-.02.1.02.21.11.28.09.06.2.07.3.02l4.6-2.4 4.59 2.4a.28.28 0 0 0 .41-.3l-.88-5.08L15.78 7c.08-.07.1-.18.07-.28z"></path>
                        </svg>
                    </span>
                    <span class="icon-rating" data-rating="5">
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 17"><path d="M15.85 6.7a.28.28 0 0 0-.23-.18l-5.13-.74-2.3-4.62a.28.28 0 0 0-.51 0l-2.3 4.62-5.14.74A.28.28 0 0 0 .1 7l3.71 3.6-.87 5.07c-.02.1.02.21.11.28.09.06.2.07.3.02l4.6-2.4 4.59 2.4a.28.28 0 0 0 .41-.3l-.88-5.08L15.78 7c.08-.07.1-.18.07-.28z"></path></svg>
                    </span>
                </div>
                <span>Еда и напитки</span>
                <input type="hidden" name="starFood" value="3">
            </div>
        </div>
        <p class="popup__spec__form-wrap">
            <textarea name="content" value="Ваш отзыв" placeholder="Ваш отзыв" class="popup__spec__input popup__spec__input_text-area"></textarea>
        </p>
        <div class="popup-checkbox">
            <input type="checkbox" name="iRecommended" value="1" id="recomended">
            <label for="recomended">Да, я рекомендую этот отель</label>
        </div>
        <div class="popup__spec__form-wrap popup__spec__form-wrap_guest">
            <input type="submit" value="Отправить" class="popup__spec__input popup__spec__input-button">
        </div>
        <p class="popup__spec__text">*Все поля обязательны к заполнению. Перед публикацией отзыва даминистрация отеля проверит ваши данные, для подтверждения пребывания в нашем отеле. Пожалуйста, укажите достоверную информацию во избежании недоразумений.</p>
    </form>
</div>