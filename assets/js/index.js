/**
 * Main JS file for Casper behaviours
 */

/*globals jQuery, document */
(function ($) {
    "use strict";

    $(document).ready(function(){

        $(".post-content").fitVids();

        // Calculates Reading Time
        $('.post-content').readingTime({
            readingTimeTarget: '.post-reading-time'
        });

        $('span.citation').click(function(){
            $(location).attr('href', $(this).data("cites"));
        });
    });

}(jQuery));
