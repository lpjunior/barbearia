$(function () {
    $(document).scroll(function () {
        let scroll = $(document).scrollTop();
        if (scroll >= 480) {
            $('#logo-maior').hide();
            $('#logo-menor').show();
             ('valor: ', scroll);
        }
        else {
            $('#logo-maior').show();
            $('#logo-menor').hide();
            ('valor 2: ', scroll);
        }
    });
});
