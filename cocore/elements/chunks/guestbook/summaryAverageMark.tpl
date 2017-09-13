<div class="full-width full-width_reverse">
    <div class="filter-light"></div>
    <section class="wrap">
        <div class="three-column">
            <div class="three-column__item">
                <div class="c-rating c-rating_{$absAverage}">
                    <span class="icon-rating">
                        <svg xmlns="http://www.w3.org/2000/svg" viewbox="0 0 16 17"><path d="M15.85 6.7a.28.28 0 0 0-.23-.18l-5.13-.74-2.3-4.62a.28.28 0 0 0-.51 0l-2.3 4.62-5.14.74A.28.28 0 0 0 .1 7l3.71 3.6-.87 5.07c-.02.1.02.21.11.28.09.06.2.07.3.02l4.6-2.4 4.59 2.4a.28.28 0 0 0 .41-.3l-.88-5.08L15.78 7c.08-.07.1-.18.07-.28z"></path>
                        </svg>
                    </span>
                    <span class="icon-rating">
                        <svg xmlns="http://www.w3.org/2000/svg" viewbox="0 0 16 17">
                            <path d="M15.85 6.7a.28.28 0 0 0-.23-.18l-5.13-.74-2.3-4.62a.28.28 0 0 0-.51 0l-2.3 4.62-5.14.74A.28.28 0 0 0 .1 7l3.71 3.6-.87 5.07c-.02.1.02.21.11.28.09.06.2.07.3.02l4.6-2.4 4.59 2.4a.28.28 0 0 0 .41-.3l-.88-5.08L15.78 7c.08-.07.1-.18.07-.28z"></path>
                        </svg>
                    </span>
                    <span class="icon-rating">
                        <svg xmlns="http://www.w3.org/2000/svg" viewbox="0 0 16 17">
                            <path d="M15.85 6.7a.28.28 0 0 0-.23-.18l-5.13-.74-2.3-4.62a.28.28 0 0 0-.51 0l-2.3 4.62-5.14.74A.28.28 0 0 0 .1 7l3.71 3.6-.87 5.07c-.02.1.02.21.11.28.09.06.2.07.3.02l4.6-2.4 4.59 2.4a.28.28 0 0 0 .41-.3l-.88-5.08L15.78 7c.08-.07.1-.18.07-.28z"></path></svg></span>
                    <span
                        class="icon-rating">
                        <svg xmlns="http://www.w3.org/2000/svg" viewbox="0 0 16 17">
                            <path d="M15.85 6.7a.28.28 0 0 0-.23-.18l-5.13-.74-2.3-4.62a.28.28 0 0 0-.51 0l-2.3 4.62-5.14.74A.28.28 0 0 0 .1 7l3.71 3.6-.87 5.07c-.02.1.02.21.11.28.09.06.2.07.3.02l4.6-2.4 4.59 2.4a.28.28 0 0 0 .41-.3l-.88-5.08L15.78 7c.08-.07.1-.18.07-.28z"></path>
                        </svg>
                    </span>
                    <span class="icon-rating"><svg xmlns="http://www.w3.org/2000/svg" viewbox="0 0 16 17"><path d="M15.85 6.7a.28.28 0 0 0-.23-.18l-5.13-.74-2.3-4.62a.28.28 0 0 0-.51 0l-2.3 4.62-5.14.74A.28.28 0 0 0 .1 7l3.71 3.6-.87 5.07c-.02.1.02.21.11.28.09.06.2.07.3.02l4.6-2.4 4.59 2.4a.28.28 0 0 0 .41-.3l-.88-5.08L15.78 7c.08-.07.1-.18.07-.28z"></path></svg></span>
                </div>
                <span class="c-rating-number">{$average} из 5</span>
            </div>
            <div class="three-column__item">
                <div class="c-progress">
                    <span class="c-progress__desc"><strong>{$recommPercent}%</strong>&nbsp; гостей рекомендуют наш отель</span>
                </div>
            </div>
            <div class="three-column__item">
                <span class="c-progress__desc c-progress__desc_button" data-modal="leaveReview">написать отзыв</span>
            </div>
        </div>
        <div class="b-rating">
            <div class="b-column">
                <div class="b-rating__text">Комфортабельность номера</div>
                <div class="b-rating__progress">
                    {$marks.comfort}
                </div>
            </div>
            <div class="b-column">
                <div class="b-rating__text">Отзывчивость персонала</div>
                <div class="b-rating__progress">
                    {$marks.personal}
                </div>
            </div>
            <div class="b-column">
                <div class="b-rating__text">Еда и напитки</div>
                <div class="b-rating__progress">
                    {$marks.food}
                </div>
            </div>
        </div>
    </section>
</div>
