$(document).ready(function () {

    InitMagnet($(".magnet"));

    imagehover = false;
    captionhover = false;
    $(".magnet a").hover(function () {
        $(this).find(".image").addClass("hover")
        $(this).find(".caption").addClass("hover")
        $(this).find(".caption").find("span").addClass("hover")
    },
    function () {
        $(this).find(".image").removeClass("hover")
        $(this).find(".caption").removeClass("hover")
        $(this).find(".caption").find("span").removeClass("hover")
    })

})

function InitMagnet(magnet) {

    ShowMagnetOnWindow($("#SelectedUseMagnet").val());

    magnet.find("a").click(function () {

        value = $("#SelectedUseMagnet").val();

        if (value.toLowerCase() == "true") {
            $("#SelectedUseMagnet").val("false");
        }
        else {
            $("#SelectedUseMagnet").val("true");
        }

        ShowMagnetOnWindow($("#SelectedUseMagnet").val());

        UpdateMagnet($("#SelectedUseMagnet").val());
        return false;
    })
}

function ShowMagnetOnWindow(newValue) {
    if (newValue.toLowerCase() == "true") {
        $(".total .price_dimention .price_detail").removeClass("hidden");
        $(".magnet a .image").removeClass("hidden");
        $(".magnet").find(".false").hide();
        $(".magnet").find(".true").show();
    }
    else {
        $(".total .price_dimention .price_detail").addClass("hidden");
        $(".magnet a .image").addClass("hidden");
        $(".magnet").find(".false").show();
        $(".magnet").find(".true").hide();
    } 
}