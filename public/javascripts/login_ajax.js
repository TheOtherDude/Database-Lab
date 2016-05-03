/**
 * Created by student on 5/2/16.
 */

loginAjax = function() {
    var payload = {
        email: $('#email').val(),
        password: $('#password').val()
    };

    // Next we configure the jQuery ajax call
    $.ajax({
        url: '/authenticate',  // url where we want to send the form data
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
    $('#loginBtn').click(function(e) {
        e.preventDefault();
        loginAjax();
    })

});
