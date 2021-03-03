function loginRequest() {
    userName = document.getElementById('usernameInput').value;
    password = document.getElementById('passwordInput').value;
    $.ajax({
        url:'/auth/test',
        data:'username=' + userName + '&password=' + password,
        type: 'POST',
        timeout: 5000,
        success:function(data){
            console.log(data);
            },
        error:function (xhr, status){
            alert('Server Issue: ' + status);
            },
        async: true
    });
}

function registerRequest() {

}

function redirectToRegister() {

}