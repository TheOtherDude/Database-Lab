/**
 * Created by student on 5/2/16.
 */

signupAjax = function() {
    var payload = {
        email: $('#email').val(),
        password: $('#password').val(),
        firstname: $('#firstname').val(),
        lastname: $('#lastname').val(),
        state: $('#state').val()
    };

    // Next we configure the jQuery ajax call
    $.ajax({
        url: '/signUp',  // url where we want to send the form data
        type: 'POST', // the type of form submission; GET or POST
        contentType: "json",  // the type of data we are sending
        data: payload,  // the actual data we are sending
        complete: function(data) {
            console.log(data);
            window.location.replace('/');
        }
    });
}


$(document).ready(function() {
    $('#signupBtn').click(function(e) {
        e.preventDefault();
        signupAjax();
    })

});
