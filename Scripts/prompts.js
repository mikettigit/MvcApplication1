function ShowMessage(caption, control) {
    $("#message_box")
    .css("top", $(control).offset().top + $(control).height() + 2)
    .css("left", $(control).offset().left)
    .animate({ opacity: "show" })
    .click(function () { HideMessage() })
    .find("span")
    .html(caption);

    setTimeout(function () { HideMessage() }, 15000);
}

function HideMessage(){
    $("#message_box").animate({ opacity: "hide" });
}
