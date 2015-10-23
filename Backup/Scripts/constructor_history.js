$(document).ready(function() {
    var constructor_history_content = $.cookie("constructor_history_content");
    if (constructor_history_content != null) {
        $("#constructor_history_plate .body").html(constructor_history_content);
        Totals();
    }

    $(document).on("click", ".constructor_history_rowremove", function () {
        $(this).parent().remove();
        SaveHistoryToCookie();
        Totals();
        return false;
    })
})

function constructor_history_add() {

    resultObject = GetObjectByHash();
    newrow = $("#constructor_history_plate .constructor_history_row.template").clone();
    newrow.removeClass("template");
    newrow.find("img").attr("src", resultObject["cloth_img"]);
    newrow.find(".constructor_history_rowprice").val(resultObject["amount"]);
    newrow.find(".constructor_history_rowlink").attr("href", "/Constructor/" + resultObject["hash"]).html(resultObject["cloth_name"] + "&nbsp;" + resultObject["cloth_subname"] + " (" + resultObject["width"] + "x" + resultObject["height"] + ")");
    newrow.appendTo("#constructor_history_plate .body");
    
    $("#constructor_history_plate .body_default").hide();

    SaveHistoryToCookie();
    Totals();

}

function Totals() {
    var total = 0;
    $("#constructor_history_plate .constructor_history_rowprice").each(function () {
        total = total + parseInt($(this).val());
    })
    $("#constructor_history_plate .bottom span").text(total);

    if (total == 0) {
        $("#constructor_history_plate .body_default").show();
        //$("#constructor_history_plate .bottom").hide();
        $("#constructor_history_plate .for_order").hide();
    }
    else {
        $("#constructor_history_plate .body_default").hide();
        $("#constructor_history_plate .bottom").show();
        $("#constructor_history_plate .for_order").show();
    }
}

function SaveHistoryToCookie() {
    $.cookie("constructor_history_content", $("#constructor_history_plate .body").html(), {
        expires: 7,
        path: '/'
    });
}