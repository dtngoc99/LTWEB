$(document).ready(function() {
    var interval = setInterval(function() {
        var momentNow = moment();
        $('.date-part').html( momentNow.format('dddd')+ ', '+momentNow.format(' MMMM DD '+','+ ' YYYY'));
                             //.substring(0,3).toUpperCase());
        //$('#time-part').html(momentNow.format('A hh:mm:ss'));
        $('.fa-calendar').html( momentNow.format('LT'));
    }, 100);
    
});