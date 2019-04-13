$('.top__carousel').slick({
    responsive: [
        {
            breakpoint: 600,
            settings:{
                arrows: false
            }
        }
        ]
});

$('.testimonials__carousel').slick({
    dots: true,
    arrows: false,
    autoplay: true,
    autoplaySpeed: 3000,
    responsive: [
        {
            breakpoint: 600,
            settings:{
                dots: false,
                autoplay: false,
            }
        }
    ]
});


