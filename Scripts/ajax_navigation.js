function AjaxGO(href) {
    $.post(href, {}, function (data) {
        $(".castle").html(data);
    }, "html");
}

function SetEvents() {
    $(".FooterLinkItem").click(function (e) {
        currentLocation = location.href;
        sharpPosition = currentLocation.indexOf("#");
        if (sharpPosition != -1) {
            currentLocation = currentLocation.substring(0, sharpPosition);
        }
        location.href = currentLocation + "#hst" + $(this).attr("href");
        e.preventDefault();
    })
}

function SetAnchorWatching(currentAnchor) {
    if (location.hash.indexOf("#hst") != -1) {
        anchor = location.hash.replace("#hst", "");
        if (anchor != currentAnchor) {
            eval("AjaxGO('" + anchor + "')");
            currentAnchor = anchor;
        }
    }
    else {
        if (currentAnchor != "") {
            location.reload(true);
            currentAnchor = "";
        }
    }
    setTimeout(function () { SetAnchorWatching(currentAnchor); }, 500);
}

$(document).ready(function () {

    SetAnchorWatching("");
    SetEvents();

})