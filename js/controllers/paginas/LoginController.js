'use strict';

function delay(callback){
    setTimeout(function () {
        callback();
    }, 3000);
}

function exibeErro(err) {
    console.log("error", err);

    let alertError = $(".alert-error");
    alertError.html(`<strong>Erro!</strong> ${err ? err.error : "Problemas para realizar o login"}`);
        
    alertError.show();

    delay(() => alertError.hide("slow"));
}

function exibeSucesso() {
    let alertSucess = $(".alert-success");
    alertSucess.show();

    delay(() => alertSucess.hide("slow"));
    location.reload();
}

function autenticar(dados) {
    console.log("auth");
    sessionStorage.setItem("dados", JSON.stringify(dados));
    console.log(dados);

    exibeSucesso();
}

function logar() {
    let email = document.getElementById("email").value;
    let senha = document.getElementById("senha").value;

    fetch(`http://localhost:3000/auth`, {
        method: "POST",
        headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({
            email: email,
            senha: senha
        })
    })
        .then((res) => {
            if (res.ok)
                res.json().then((dados) => autenticar(dados));                
            else
                exibeErro();
        })
        .catch((err) => exibeErro(err))



    //$(".alert").alert()
}