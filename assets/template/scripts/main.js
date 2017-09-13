'use strict'
var app = {
    isMobile: (/Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent)),
    init: function () {
        if ($('.section-slider-wrap').length) {
            sliderFront()
        }
        if ($('.accomodation-lux .accomodation-basic-wrap').length) {
            sliderAccomodations()
        }
        if ($('.accomodation-appartments .accomodation-basic-wrap').length) {
            sliderAccomodationsTwo()
        }
        if ($('.section-tabs__slider-swiper .accomodation-basic-wrap').length) {
            sliderSpecFront()
        }
        $(document).on('scroll', function () {
            if (!this.isMobile) {
                var top = $('#menu__sticky').offset().top;
                if (top > 77) {
                    $('.popup__booking').addClass('stickyBooking');
                } else {
                    $('.popup__booking').removeClass('stickyBooking');
                }
            }
        });
        if ($('#mapcontacts').length) {
            initMapContacts(document.getElementById('mapcontacts'))
        }
        initMapContacts(document.getElementById('mapcontactsPopup'));
    }
}

window.onload = function () {
    navigationAll();
    popUpOpen();
    menuOpen();
    bookingOpen();
    switchTabs();
    app.init();
    specOrder();
    if ($('#myCanvas').length) {
        tagEvents();
    }
    if ($('.fun-info-block').length) {
        globalEvents();
    }
    gallery.init();
    gallery.ajaxGallery();
    events.init();
    guestbook.init();
    sliderSpecFront();
}

function initMapContacts(map) {
//  var uluru = {lat: 50.630108, lng: 19.6625853};
//  var mapContacts = new google.maps.Map(map, {
//    zoom: 15,
//    center: uluru,
//    disableDefaultUI: true,
//    scrollwheel: false
//  });
//  var markerContacts = new google.maps.Marker({
//    position: uluru,
//    map: mapContacts,
//    icon: 'assets/images/pin-icon-big.png'
//  });
}


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
        this.slides.fancybox(this.options)
        $('a[rel=gallery1]').fancybox(this.options)
        $('a[rel=gallery2]').fancybox(this.options)
        $('a[rel=gallery3]').fancybox(this.options)
        if ($('#pdopage div').is('.gallery__row')) {
            $('.ajaxGallery').show();
        }
    },
    ajaxGallery: function () {
        $('.ajaxGallery').on('click', function (e) {
            e.preventDefault();
            $(this).hide();
            $('#pdopage').show();
        });
    }
}

function tagEvents() {
    var canvas = document.getElementById('myCanvas')
    var containerWidth = $('.tags-container').width()
    var containerHeight = $('.tags-container').height()
    canvas.width = containerWidth
    canvas.height = containerHeight
    TagCanvas.Start('myCanvas', 'tags', {
        textColour: '#ffffff',
        outlineColour: 'transparent',
        textHeight: 40,
        activeCursor: 'pointer',
        initial: [0.03, 0.03],
        minSpeed: 0.009,
        maxSpeed: 0.015,
        wheelZoom: false,
    })
    var i, et = $('#tags a')
    for (i in et) {
        et[i].nodeName == 'A' && et[i].addEventListener('click', function (e) {
            e.preventDefault();
            //и вот тут вся хурма
            getAjaxTags(this);
        })
    }
    $('.section-tabs-pagination .section-tabs-bullet').on('click', function () {
        getAjaxTags(this);
    })
}

var events = {
    init: function () {
        $(document).on('click', '.gallery__col_text li', function (e) {
            $(this).toggleClass('active').siblings().removeClass('active')
        }).on('click', '.combodate', function (e) {

        }).on('click', '.tags-container', function (e) {
            var X = e.pageX // положения по оси X
            var Y = e.pageY // положения по оси Y
            var offset = $('.tags-container').offset()
            $('.tags-container__overlay .tags-container__content').css({top: Y - offset.top, left: X})
            $(this).toggleClass('active');
            if (!$(this).hasClass('active')) {
                TagCanvas.Resume('myCanvas');
            }
        });
        $('.icon-rating').on('mouseenter', function (e) {
            var that = $(this);
            $(this).addClass('active').prevAll().addClass('active');
        }).on('mouseleave', function () {
            $(this).removeClass('active').prevAll().removeClass('active')
        }).on('click', function (e) {
            $(this).off().siblings().off();
            var rating = $(this).attr('data-rating');
            $(this).parent().siblings('input').val(rating);
            $(this).addClass('active').prevAll().addClass('active');
            $(this).off('mouseleave').siblings().off('mouseleave');
        });
        $(document).on('af_complete', function (event, response) {
            if (response.success) {
                $('.popup__spec').hide();
            }
        });
        // $('hot')
        $('.section-breadcrums__item').on('click', function (e) {
            e.preventDefault();
            if ($(this).data('breadcrumb') == 'all') {
                $('[data-spec]').show();
            } else {
                $('[data-spec]').hide();
                $('.spec-item[data-spec="' + $(this).data('breadcrumb') + '"]').show();
            }
            $('.section-breadcrums__item').removeClass('section-breadcrums__item_active');
            $(this).addClass('section-breadcrums__item_active');
        });
    }
}

var guestbook = {
    init: function () {
        $('.c-tab a').on('click', function (e) {
            e.preventDefault();
            var type = $(this).data('guest');
            $('.c-tab a').removeClass('guest_active');
            $(this).addClass('guest_active');
            $('.guests').hide();
            $('.guests[data-guest="' + type + '"]').show();
        });
    }
}

function getAjaxTags(el) {
    var tag = $(el).data('tag'),
            title = $(el).html(),
            docid = $(el).data('pageid'),
            action = 'getTag'
    $.post('ajax.php', {
        tag: tag,
        action: action,
        docid: docid
    }, function (data) {
        TagCanvas.Pause('myCanvas')
        var processedHTML = JSON.parse(data)
        $('.tags-container__title').html(title)
        $('.tags-container__article').html(processedHTML['html'][0]['descr'])
        $('.tags-container__article').append('<div class="tags-container__bottom">' + processedHTML['html'][0]['level'] + '</div>')
        $('.tags-container').addClass('active')
    })
}

function globalEvents() {
    $('.fun-info-block').on('click', function (e) {
        $(this).toggleClass('active').siblings().removeClass('active')
    })
}

function switchTabs() {
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
    $(navHeader).click(function () {
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
    $('.section-spec__item__button, .section-tabs__item__button, .c-progress__desc_button, .tour-trigger, .map-trigger').click(function (e) {
        e.preventDefault();
        
        var currentItem,
        popUp, buttonClose,
        
        data = $(this).data('modal');
        popUp = $('section[data-modal="'+data+'"]');
        
        buttonClose = $('.popup__spec__button-close');
        $(popUp).css('display', 'flex').hide().fadeIn();
        $('body').addClass('fixed__body');

        $(buttonClose).click(function () {
            $(popUp).fadeOut();
            $('body').removeClass('fixed__body');
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
    if ($.fn.slick) {
        $('.section-tabs__slider-swiper .swiper-wrapper').slick({
            slidesToShow: 4,
            slidesToScroll: 4,
            responsive: [
                {
                    breakpoint: 1024,
                    settings: {
                        slidesToShow: 3,
                        slidesToScroll: 3,
                        infinite: true,
                    }
                },
                {
                    breakpoint: 768,
                    settings: {
                        slidesToShow: 2,
                        slidesToScroll: 2
                    }
                },
                {
                    breakpoint: 480,
                    settings: {
                        slidesToShow: 1,
                        slidesToScroll: 1
                    }
                }]
        });
    }
}

function specOrder() {
    $('.spec-order-btn').on('click', function () {
        var title = $(this).parents('.spec-item').find('.spec-order-title').html()
        console.log('title ' + title)
        $('#specOrder .popup__spec__title').html(title)
        $('#specOrder input[name="specItem"]').val(title)
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
    $(this).toggleClass('active').siblings().removeClass('active')
})

if (jQuery.datetimepicker) {
    jQuery.datetimepicker.setLocale('ru')
    $('#datepicker').datetimepicker({
        timepicker: false,
        format: 'd F'
    })
    $('#timepicker').datetimepicker({
        datepicker: false,
        format: 'h:i'
    })
}

