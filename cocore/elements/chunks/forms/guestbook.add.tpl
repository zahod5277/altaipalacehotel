<form action="{$_modx->resource.id|url}" class="ajax_form" method="POST" enctype="multipart/form-data">
    <input type="text" name="guestName" class="form-control" placeholder="Имя">
    <input type="text" name="incomingDate" class="form-control" placeholder="Дата заезда">
    <input type="text" name="contactNumber" class="form-control" placeholder="Номер телефона">
    <input type="text" name="eMail" class="form-control" placeholder="Емайл">
    <input type="text" name="city" class="form-control" placeholder="Город">
    <input type="text" name="travelPurpose" class="form-control" placeholder="Цель поездки">
    <input type="text" name="starComfort" class="form-control" placeholder="Комфорт">
    <input type="text" name="starPersonal" class="form-control" placeholder="Персонал">
    <input type="text" name="starFood" class="form-control" placeholder="Еда">
    <input type="text" name="iRecommended" class="form-control" placeholder="Я рекомендую">
    <button type="submit" name="submit" class="btn">Отправить</button>
</form>