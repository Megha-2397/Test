$(document).on('turbolinks:before-cache', function (e) {
    if ($('select.select2-hidden-accessible').length != 0) {
        $("select.select2-hidden-accessible").select2('destroy');
    }
});
$(document).on('turbolinks:load', function () {
    if ($('.custome-select2').length != 0) {
        $('.custome-select2').select2({
            width: '100%',
            theme: 'bootstrap'
        }).on('select2:open', function(e){
            $('.select2-search__field').attr('placeholder', 'Search');
        })
    }

    $(".basicDate").flatpickr({
        dateFormat: "Y-m-d",
        minDate: "today"
    });

});