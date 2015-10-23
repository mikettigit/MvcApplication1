$(document).ready(function () {

    InitDriverSide($(".driverside"));

    circlehover = false;
    captionhover = false;
    $(".driverside a").hover(function () {
        $(this).find(".circle").addClass("hover")
        $(this).find(".caption").addClass("hover")
        $(this).find(".caption").find("span").addClass("hover")
    },
    function () {
        $(this).find(".circle").removeClass("hover")
        $(this).find(".caption").removeClass("hover")
        $(this).find(".caption").find("span").removeClass("hover")
    })

})

function InitDriverSide(driverside) {

    ShowDriverSideOnWindow($("#SelectedDriverSide").val());

    driverside.find("a").click(function () {

        value = $("#SelectedDriverSide").val();

        if (value == "right") {
            $("#SelectedDriverSide").val("left");
        }
        else {
            $("#SelectedDriverSide").val("right");
        }

        ShowDriverSideOnWindow($("#SelectedDriverSide").val());

        UpdateDriverSide($("#SelectedDriverSide").val());
        return false;
    })
}

function ShowDriverSideOnWindow(newValue) {
    if (newValue == "left") {
        $(".window").addClass("reverse");
        $(".driverside").find(".right").hide();
        $(".driverside").find(".left").show();
    }
    else {
        $(".window").removeClass("reverse");
        $(".driverside").find(".right").show();
        $(".driverside").find(".left").hide();
    } 
}