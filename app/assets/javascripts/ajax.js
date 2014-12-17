$(document).ready(function() {
    $('#sum_submit').click(function(){
        $.ajax({
            type: "POST",
            url:  "/calculator/sum",
            data: {
                first_value: $('#sum_field_1').val(),
                second_value: $('#sum_field_2').val()
            },
            success: function(html) {
                $('#sum_result').html(html);
            }
        });
    });

    $('#subtraction_submit').click(function(){
        $.ajax({
            type: "POST",
            url:  "/calculator/subtraction",
            data: {
                first_value: $('#subtraction_field_1').val(),
                second_value: $('#subtraction_field_2').val()
            },
            success: function(html) {
                $('#subtraction_result').html(html);
            }
        });
    });

    $('#division_submit').click(function(){
        $.ajax({
            type: "POST",
            url:  "/calculator/division",
            data: {
                first_value: $('#division_field_1').val(),
                second_value: $('#division_field_2').val()
            },
            success: function(html) {
                $('#division_result').html(html);
            }
        });
    });

    $('#square_root_submit').click(function(){
        $.ajax({
            type: "POST",
            url:  "/calculator/square_root",
            data: {
                first_value: $('#square_root_field').val()
            },
            success: function(html) {
                $('#square_root_result').html(html);
            }
        });
    });

    $('#cube_root_submit').click(function(){
        $.ajax({
            type: "POST",
            url:  "/calculator/cube_root",
            data: {
                first_value: $('#cube_root_field').val()
            },
            success: function(html) {
                $('#cube_root_result').html(html);
            }
        });
    });

    $('#sinus_submit').click(function(){
        $.ajax({
            type: "POST",
            url:  "/calculator/sinus",
            data: {
                first_value: $('#sinus_field').val()
            },
            success: function(html) {
                $('#sinus_result').html(html);
            }
        });
    });

    $('#cosinus_submit').click(function(){
        $.ajax({
            type: "POST",
            url:  "/calculator/cosinus",
            data: {
                first_value: $('#cosinus_field').val()
            },
            success: function(html) {
                $('#cosinus_result').html(html);
            }
        });
    });
});