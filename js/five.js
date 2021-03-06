// jQuery for page scrolling feature - requires jQuery Easing plugin
$(function () {
    $('a.page-scroll').bind('click', function (event) {
        var $anchor = $(this);
        $('html, body').stop().animate({
            scrollTop: $($anchor.attr('href')).offset().top
        }, 1500, 'easeInOutExpo');
        event.preventDefault();
    });
});

// Highlight the top nav as scrolling occurs
$('body').scrollspy({
    target: '.navbar-fixed-top'
})

// Closes the Responsive Menu on Menu Item Click
$('.navbar-collapse ul li a').click(function () {
    $('.navbar-toggle:visible').click();
});

$(".portfolio-modal").on('hidden.bs.modal', function (e) {
    $(this).contents().find("iframe").attr("src", $(this).contents().find("iframe").attr("src"));
});

$(".carousel").swipe({
    swipe: function (event, direction, distance, duration, fingerCount, fingerData) {

        if (direction == 'left') $(this).carousel('next');
        if (direction == 'right') $(this).carousel('prev');
    },
    allowPageScroll: "vertical"
});

//Include notebook page inline
$(document).ready(function () {
    $('[data-include]').each(function () {
        var file = 'notebooks/' + $(this).data('include');
        console.log(file);
        $(this).load(file);
    });
});