$(document).ready(function () {

    StepsAnimator.Start()

    function WidthChange(e) {
        if (e.which == 13 || e.which == undefined) {
            var val = $(this).val().replace(/[^\d]/g, '');
            if (val.length == 0 || parseInt(val) == 0) {
                val = $(this).attr("defaultvalue");
            }
            UpdateWidth(val);
        }
    }
    $("#width").change(WidthChange)
    $("#width").keypress(WidthChange)

    function HeightChange(e) {
        if (e.which == 13 || e.which == undefined) {
            var val = $(this).val().replace(/[^\d]/g, '');
            if (val.length == 0 || parseInt(val) == 0) {
                val = $(this).attr("defaultvalue");
            }
            UpdateHeight(val);
        }
    }
    $("#height").change(HeightChange)
    $("#height").keypress(HeightChange)

    $(".magnifier").click(function() {

    })
})

function UpdateDriverSide(newValue) {
    $.post("/Constructor/UpdateDriverSide",
    {
        SelectedDriverSide: newValue
    },
    function (data) {

        UpdateTotal(data.Object)

        if (!data.Result) {
            alert(data.Message);
        }
    }, "json")
    StepsAnimator.Stop()
}

function UpdateMagnet(newValue) {
    $.post("/Constructor/UpdateMagnet",
    {
        SelectedUseMagnet: newValue
    },
    function (data) {

        UpdateTotal(data.Object)

        if (!data.Result) {
            alert(data.Message);
        }
    }, "json")
    StepsAnimator.Stop()
}

function UpdateCloth(newValue) {
    $.post("/Constructor/UpdateCloth",
    {
        SelectedClothID: newValue
    },
    function (data) {

        UpdateTotal(data.Object)

        if (!data.Result) {
            ShowMessage(data.Message + "<br/><a href='/Constructor/Measurement/#measurements'>подробнее...</a>", $("#ClothCarousel .mask"))
        }
    }, "json")
    StepsAnimator.Stop()
}

function UpdateShape(newValue) {
    $.post("/Constructor/UpdateShape",
    {
        SelectedShapeID: newValue
    },
    function (data) {

        UpdateTotal(data.Object)

        if (!data.Result) {
            alert(data.Message);
        }
    }, "json")
    StepsAnimator.Stop()
}

function UpdateWidth(newValue) {
    $.post("/Constructor/UpdateWidth",
    {
        Width: newValue
    },
    function (data) {

        UpdateTotal(data.Object)

        if (!data.Result) {
            ShowMessage(data.Message + (data.HelpURL == null ? "" : "<br/><a href='" + data.HelpURL + "'>подробнее...</a>"), $("#width").parent().find("u"))
        }
    }, "json")
    StepsAnimator.Stop()
}

function UpdateHeight(newValue) {
    $.post("/Constructor/UpdateHeight",
    {
        Height: newValue
    },
    function (data) {

        UpdateTotal(data.Object)

        if (!data.Result) {
            ShowMessage(data.Message + (data.HelpURL == null ? "" : "<br/><a href='" + data.HelpURL + "'>подробнее...</a>"), $("#height").parent().find("u"))
        }
    }, "json")
    StepsAnimator.Stop()
}

function UpdateTotal(dataObject) {

    var resultObject = ""
    eval("resultObject = " + dataObject)

    $("#width").val(resultObject["width"])
    $("#height").val(resultObject["height"])
    $(".total .amount span").html(resultObject["amount"])
    $(".total .price_dimention .price").html(resultObject["price_dimention"])

    $(".hash").animate({ opacity: "hide" });
    $(".hash a").attr("href", "/Constructor/" + resultObject["hash"])
    $(".hash").animate({ opacity: "show" });
}

function GetObjectByHash(hash) {

    var resultObject = "";

    $.ajax({
        type: 'POST',
        url: "/Constructor/GetObjectByHash",
        data: {
            hash: hash
        },
        success: function (data) {
            if (data.Result) {
                eval("resultObject = " + data.Object);
            }
            else
            {
                ShowMessage(data.Message);
            }
        },
        dataType: "json",
        async: false
    });

    return resultObject;
}