$(document).ready(function() {

    $('.gameInfo').on('click', '.gameInfoBtn', function() {
        var accPay = $(this).closest('.gameInfo').data('acc');
        console.log("accPay:" + accPay);
        var basePay = $(this).closest('.gameInfo').data('base');
        console.log("basePay:" + basePay);

        var payInfo = '<p>accPay $' + accPay + ', basePay $' + basePay + '</p>';
        var gameInfo = $(this).closest('.gameInfo');
        gameInfo.append(payInfo);
        $(this).remove();
    });

});