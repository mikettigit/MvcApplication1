$(document).ready(function () {

    selector = "." + location.hash.replace("#", "");

    if (selector.length > 1) {
        $(selector).addClass("attention");

        //$("body,html").bind("mousedown mousewheel", function () {
        //    $(selector).removeClass("attention");
        //    $(this).unbind("mousedown mousewheel");
        //})
    }

})

