<section class="wrap">
    <form class="c-booking" action="{$_modx->resource.id|url}" method="POST" class="ajax_form">
        <h2 class="c-booking__title">Забронируйте столик</h2>
        <div class="c-form">
            <div class="c-form__column">
                <p class="c-form__input c-form__input_date">
                    <input type="text" id="datepicker" name="date" placeholder="Выберите дату">
                </p>
                <p class="c-form__input c-form__input_time">
                    <input type="text" id="timepicker" name="time" placeholder="Выберите время">
                </p>
                <p class="c-form__input c-form__input_select">
                    <select name="guests" value="1 Гость">
                        <option value="1 гость">1 Гость</option>
                        <option value="2 гостя">2 Гостя</option>
                        <option value="3 гостя">3 Гостя</option>
                        <option value="4 гостя">4 Гостя</option>
                    </select>
                </p>
                <p class="c-form__input">
                    <input type="text" id="name" name="name" placeholder="ВАШЕ ИМЯ">
                </p>
                <p class="c-form__input">
                    <input type="text" id="phone" name="phone" placeholder="КОНТАКТНЫЙ НОМЕР">
                </p>
            </div>
            <div class="c-form__column">
                <p class="c-form__input c-form__input_button">
                    <input type="submit" type="submit" value="Забронировать">
                </p>
            </div>
        </div>
    </form>
</section>