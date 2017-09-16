ymaps.ready(function () {
    var myMap = new ymaps.Map('map', {
        center: [52.00150619687526,85.8276180316454],
        zoom: 9,
        // Добавим кнопку для построения маршрутов на карту.
        controls: ['routeButtonControl']
    });
    var to = [51.821289, 85.665388];
    // Определяем местоположение пользователя.
    ymaps.geolocation.get().then(function (res) {
        // Координаты текущего местоположения пользователя.
        var coords = res.geoObjects.get(0).geometry.getCoordinates(),
            control = myMap.controls.get('routeButtonControl');

        // Зададим координаты пункта отправления.
        control.routePanel.state.set('from', coords);
        // Откроем панель маршрута.
         control.routePanel.state.set('to', to);
    });
});