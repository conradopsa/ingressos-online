'use strict';

function logar() {
    let email = document.getElementById("email").value;
    let senha = document.getElementById("senha").value;

    let clientePromise = fetch(`http://localhost:3000/auth`, {
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
        .then((res) => res.json().then(cliente => cliente))
        .catch((err) => console.log(err));

    clientePromise.then(cliente => {
        console.log(cliente);
    })

    //$(".alert").alert()
}