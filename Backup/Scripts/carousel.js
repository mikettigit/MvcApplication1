$(document).ready(function () {

    InitCarousel($("#ClothCarousel"), UpdateCloth)
    if ($("#ShapeCarousel").length > 0) {
        InitCarousel($("#ShapeCarousel"), UpdateShape)
    }

})

function InitCarousel(carousel, onSelect)
{
    SelectItemById(carousel, carousel.find(".SelectedItemID").attr("value"));
    carousel.onSelect = onSelect;

    carousel.find(".mask,.down_turn,.up_turn").click(function (e) {
        
        e.stopPropagation();

        var ItemsContainer = carousel.find('ul');
        //return if animation in progress
        if (ItemsContainer.queue("fx").length > 0) { return; }

        var SelectedItemID = carousel.find(".SelectedItemID").attr("value");
        var Items = ItemsContainer.find("li");

        for (var i = 0; i < Items.length; i++) 
        { 
            if ($(Items[i]).attr("id") == SelectedItemID) 
            {
                var direction = 1;
                if ($(this).hasClass("down_turn")) {
                    direction = 1;
                }
                else {
                    if ($(this).hasClass("up_turn")) {
                        direction = -1;
                    }
                    else {
                        direction = (e.offsetY > $(this).height() / 2) ? 1 : -1;
                    }
                }
                if (i == 0 && direction == -1 || i == Items.length - 1 && direction == 1)
                {
                    return;
                }
                else
                {
                    SelectItemById(carousel, $(Items[i + direction]).attr("id"));
                }
                
            } 
        }

    });

    carousel.find(".magnifier").click(function (e) {
        e.stopPropagation();
    });
}

function SelectItemById(carousel, id) 
{
    var ItemsContainer = carousel.find('ul');

    var SelectedItem = ItemsContainer.find("#" + id);
    var direction = SelectedItem.position().top > -ItemsContainer.position().top ? "-=" : "+=";

    var TopPlate = carousel.find('.topplate');
    var topShift = 0;
    if (TopPlate.length > 0) {
        topShift = TopPlate.height();
    }

    shift = SelectedItem.position().top + ItemsContainer.position().top - topShift;
    if (shift < 0) { shift = shift * -1 }

    ItemsContainer.animate({ top: direction + shift }, 500, null,
    function () {
        var InfoStrings = SelectedItem.find("input[type=hidden]");
        for (var i = 0; i < InfoStrings.length; i++) {
            carousel.find(".description ." + InfoStrings[i].className + " a").text(InfoStrings[i].value).attr("href", "/Palette/Cloth/" + id);
            carousel.find(".mask .magnifier").attr("href", "/Palette/Cloth/" + id);
            carousel.find(".description ." + InfoStrings[i].className + " span").text(InfoStrings[i].value);
        }
        var SelectedItemID_container = carousel.find(".SelectedItemID");
        if (SelectedItemID_container.val() != id) {
            SelectedItemID_container.val(id);
            carousel.onSelect(carousel.find(".SelectedItemID").val());
        }
    });
}
