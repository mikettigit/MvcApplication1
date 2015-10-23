$(document).ready(function () {

    var gallery = $(".gallery");
    InitGallery(gallery);

})

function InitGallery(gallery) {
    gallery.find(".right_slide img, .bottom_slide img").hover(function () {
        $(this).addClass("hover")
    },
    function () {
        $(this).removeClass("hover")
    })

    gallery.find(".right_slide img, .bottom_slide img").click(function () {
        ChangeImage(this) 
    });
}

function ChangeImage(item) {
    main_slide = $(item).parent().parent().find(".main_slide img");
    CurrentImage = main_slide.attr("src");
    main_slide.attr("src", $(item).attr("src"));
    $(item).attr("src", CurrentImage);
}