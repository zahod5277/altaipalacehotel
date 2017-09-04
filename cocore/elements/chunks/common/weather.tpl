<div class="section-tabs__slide__clock">
    <h5 class="section-tabs__slide__clock-title_mobile">Сейчас на Алтае {$date}</h5>
    <div class="section-tabs__slide__clock-wrap">
        <h5 class="section-tabs__slide__clock-title">Сейчас на Алтае</h5>
        <div class="demo-container clocks active bounce">
            <article class="clock ios7 simple station js-altai">
                <div class="clock__paths">
                    <div class="clock__path"></div>
                    <div class="clock__path"></div>
                    <div class="clock__path"></div>
                    <div class="clock__path"></div>
                    <div class="clock__path"></div>
                    <div class="clock__path"></div>
                    <div class="clock__path"></div>
                    <div class="clock__path"></div>
                </div>
                <section class="hours-container">
                    <section class="hours"></section>
                </section>
                <section class="minutes-container">
                    <section class="minutes"></section>
                </section>
                <section class="seconds-container">
                    <section class="seconds"></section>
                </section>
            </article>
        </div>
        <h5 class="section-tabs__slide__clock-title section-tabs__slide__clock-weather">
            {$date}
            {$weather.fact.temp} °C
        </h5>
        <div class="section-tabs__slide__clock-weather_mobile">
            <img src="assets/template/images/svg/icon-weather-big.svg" class="section-tabs__slide__clock-weather_image">
            <div class="section-tabs__slide__clock-weather_text">{$weather.fact.temp} °C</div>
        </div>
    </div>
</div>