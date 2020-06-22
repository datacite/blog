/*globals jQuery, document */
(function ($) {
    "use strict";

    $(document).ready(function(){
        // Calculates Reading Time
        $('.post-content').readingTime({
            readingTimeTarget: '.post-reading-time'
        });
    });

}(jQuery));