'use strict'
window.onload = function () {
    navigationAll();
    popUpOpen();
    menuOpen();
    bookingOpen();
    switchTabs();
    sliderFront();
    sliderAccomodations();
    sliderAccomodationsTwo();
    sliderSpecFront();
    if ($("#myCanvas").length) {
        tagEvents();
    }
    if ($(".fun-info-block").length) {
        globalEvents();
    }
    gallery.init();

    events.init();

};
if (jQuery.datetimepicker) {
    jQuery.datetimepicker.setLocale('ru');
}
if (jQuery.datetimepicker) {
    $('#datepicker').datetimepicker({
        timepicker: false,
        format: 'd F'
    });
    $('#timepicker').datetimepicker({
        datepicker: false,
        format: 'h:i'
    });
}
// var comboDate = {
//   dateOptions: {
//     minuteStep: 5
//   },
//   init: function () {
//     $('#datetime24').combodate(this.dateOptions);
//     $('#datemonth').combodate(this.dateOptions);
//     $('.combodate select').wrap('<div class="combodate__item"></div>');
//   }
// };

var gallery = {
    slides: $('[data-fancybox="images"]'),
    options: {
        thumbs: {
            autoStart: true
        }
    },
    init: function () {
        if (!this.slides.length)
            return 0;
        this.slides.fancybox(this.options);
        $('a[rel=gallery1]').fancybox(this.options);
        $('a[rel=gallery2]').fancybox(this.options);
        $('a[rel=gallery3]').fancybox(this.options);
    }
};


function tagEvents() {
    var canvas = document.getElementById('myCanvas');
    var containerWidth = $('.tags-container').width();
    var containerHeight = $('.tags-container').height();
    canvas.width = containerWidth;
    canvas.height = containerHeight;
    TagCanvas.Start('myCanvas', 'tags', {
        textColour: '#ffffff',
        outlineColour: '#ffffff',
        textHeight: 40,
        activeCursor: 'pointer',
        initial: [0.03, 0.03],
        minSpeed: 0.001,
        maxSpeed: 0.009,
        wheelZoom: false,
    });
    
    var i, et = $('#tags a');
    for(i in et) {
      et[i].nodeName == 'A' && et[i].addEventListener('click', function(e) {
        e.preventDefault();
        //и вот тут вся хурма
        var tag = $(this).data('tag'),
            action = 'getTag';
        $.post('ajax.php',{
            tag: tag,
            action: action
        },function(data){
            console.log('успешно');
        });
      });
    }

}

var events = {
    init: function () {
        $(document).on('click', '.gallery__col_text li', function (e) {
            $(this).toggleClass('active').siblings().removeClass('active');
        }).on('click', '.combodate', function (e) {
            console.log($(this).find('select'));
            // $(this).find('select').focus();

        });
    }
};

function globalEvents() {
    $('.fun-info-block').on('click', function (e) {
        $(this).toggleClass('active').siblings().removeClass('active');
    });
}

function switchTabs() {
    console.log('working!')
    var itemsNav = $('.section-tabs-bullet'),
            switchSlides = $('.section-tabs__slide'),
            switchPagination = $('.section-tabs-pagination'),
            wrapPagination = $('.wrap-pagination'),
            iconOpen = $('.wrap-pagination img'),
            indexOpen = false,
            switchSlider = $('.section-tabs__slider')
    $(itemsNav).click(function () {
        var index = $(this).index()
        console.log(index)
        $(itemsNav).removeClass('section-tabs-bullet_active')
        $(this).addClass('section-tabs-bullet_active')
        if (indexOpen == true) {
            indexOpen = false
            $(switchPagination).removeClass('section-tabs-pagination_open')
            $(wrapPagination).removeClass('wrap-pagination_open')
        }
        $(switchSlides).removeClass('section-tabs__slide_active')
        $(switchSlides[index]).addClass('section-tabs__slide_active')
    })
    $(iconOpen).click(function () {
        if (indexOpen == false) {
            indexOpen = true
            $(switchPagination).addClass('section-tabs-pagination_open')
            $(wrapPagination).addClass('wrap-pagination_open')
        } else {
            indexOpen = false
            $(switchPagination).removeClass('section-tabs-pagination_open')
            $(wrapPagination).removeClass('wrap-pagination_open')
        }
    })
}

function navigationAll() {
    var indexOpen = false,
            navBody = $('.all-navigation'),
            navHeader = $('.all-navigation__header')
    console.log('a')
    $(navHeader).click(function () {
        console.log('W')
        if (indexOpen == false) {
            indexOpen = true
            $(navBody).addClass('all-navigation_open')
        } else {
            indexOpen = false
            $(navBody).removeClass('all-navigation_open')

        }
    })
}

function popUpOpen() {
    $('.section-spec__item__button, .section-tabs__item__button, .c-progress__desc_button').click(function () {
        console.log('init')
        var popUp = $('.popup__spec'),
                buttonClose = $('.popup__spec__button-close')
        $(popUp).css('display', 'flex').hide().fadeIn()
        $('body').addClass('fixed__body')

        $(buttonClose).click(function () {
            $(popUp).fadeOut()
            $('body').removeClass('fixed__body')
        })
    })
}

function menuOpen() {
    $('.header__mobile__gamburger').click(function () {
        var menuMobile = $('.header__mobile__menu'),
                buttonCloseMenu = $('.header__mobile__close')
        $(this).addClass('header__mobile__gamburger_hidden')
        $('body').addClass('fixed__body')
        $(buttonCloseMenu).addClass('header__mobile__close_active')
        $(menuMobile).css('display', 'flex').hide().fadeIn()
        $('.header__mobile__calendar').addClass('header__mobile__calendar_hidden')
        $(buttonCloseMenu).click(function () {
            $(menuMobile).fadeOut()
            $('body').removeClass('fixed__body')
            $('.header__mobile__calendar').removeClass('header__mobile__calendar_hidden')
            $('.header__mobile__gamburger').removeClass('header__mobile__gamburger_hidden')
            $(buttonCloseMenu).removeClass('header__mobile__close_active')
        })
    })
}

function bookingOpen() {
    var popupBooking = $('.popup__booking'),
            buttonCloseMenu = $('.header__mobile__close'),
            headerArrow = $('header .wrap'),
            i = false

    $('.header__button__book').click(function () {
        if (i == false) {
            $(popupBooking).addClass('popup__booking_open')
            $(this).addClass('header__button__book_active')
            $(headerArrow).addClass('wrap__mobile__calendar_active')
            i = true

        } else {
            $(popupBooking).removeClass('popup__booking_open')
            $(this).removeClass('header__button__book_active')
            $(headerArrow).removeClass('wrap__mobile__calendar_active')
            i = false

        }

    })
    $('.header__mobile__calendar').click(function () {

        if (i == false) {
            i = true
            $(popupBooking).addClass('popup__booking_open')
            $(this).addClass('header__mobile__calendar_active')
            $(headerArrow).addClass('wrap__mobile__calendar_active')

        } else {
            i = false
            $(popupBooking).removeClass('popup__booking_open')
            $(this).removeClass('header__mobile__calendar_active')
            $(headerArrow).removeClass('wrap__mobile__calendar_active')

        }

    })

}

function sliderFront() {
    var mySwiper = new Swiper('.section-slider-wrap', {
        // Optional parameters
        direction: 'horizontal',
        loop: true,
        slidesPerView: 'auto',
        paginationClickable: false,
        spaceBetween: 30,
        nextButton: '.section-slider__buttons__nav-right',
        prevButton: '.section-slider__buttons__nav-left',
        pagination: '.swiper-pagination',
        centeredSlides: true

    })

}

function sliderAccomodations() {
    var mySwiper = new Swiper('.accomodation-lux .accomodation-basic-wrap', {
        // Optional parameters
        direction: 'horizontal',
        loop: true,
        slidesPerView: 1,
        paginationClickable: false,
        spaceBetween: 30,
        nextButton: '.accomodation-basic__pagination_right',
        prevButton: '.accomodation-basic__pagination_left',
        pagination: '.swiper-pagination',
        centeredSlides: true

    })

}

function sliderAccomodationsTwo() {
    var mySwiper = new Swiper('.accomodation-appartments .accomodation-basic-wrap', {
        // Optional parameters
        direction: 'horizontal',
        loop: true,
        slidesPerView: 1,
        paginationClickable: false,
        spaceBetween: 30,
        nextButton: '.accomodation-basic__pagination_right',
        prevButton: '.accomodation-basic__pagination_left',
        pagination: '.swiper-pagination',
        centeredSlides: true

    })

}

function sliderSpecFront() {
    var mySwiper = new Swiper('.section-tabs__slider-swiper .accomodation-basic-wrap', {
        // Optional parameters
        direction: 'horizontal',
        loop: true,
        slidesPerView: 1,
        paginationClickable: false,
        spaceBetween: 30,
        nextButton: '.accomodation-basic__pagination_right',
        prevButton: '.accomodation-basic__pagination_left',
        pagination: '.swiper-pagination',
        centeredSlides: true

    })

}


$('#menu__sticky').sticky({topSpacing: 0})

$('#menu__sticky').on('sticky-update', function () {
    console.log('Update')
})
$('#menu__sticky').on('sticky-bottom-reached', function () {
    console.log('Bottom reached')
})
$('#menu__sticky').on('sticky-bottom-unreached', function () {
    console.log('Bottom unreached')
})
$('.m-menu').on('click', function (e) {
    $(this).toggleClass('active').siblings().removeClass('active');
});

