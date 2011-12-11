function mycarousel_itemLoadCallback(carousel, state)
{
    // Since we get all URLs in one file, we simply add all items
    // at once and set the size accordingly.
    if (state != 'init')
        return;

    var kittynumber = $('#kittynumber').val();
    jQuery.get('/kitties/' + kittynumber + '/carouselitems', function(data) {
    	//alert(data);
        mycarousel_itemAddCallback(carousel, carousel.first, carousel.last, data);
    });
};

function mycarousel_itemAddCallback(carousel, first, last, data)
{
    // Simply add all items at once and set the size accordingly.
    var items = data.split('|');

    for (i = 0; i < items.length-1; i++) {
    	  var itemhtml = items[i];
        carousel.add(i+1, itemhtml);
            
    }
    carousel.size(items.length);

};

$(document).ready(function() {
    $('#mycarousel').jcarousel({
        itemLoadCallback: mycarousel_itemLoadCallback, visible: 2
    });
});

