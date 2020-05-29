'use strict';

function checarLogin(){
    let dados = JSON.parse(sessionStorage.getItem("dados"));

    console.log(dados);
    console.log(dados.cliente);
    console.log(dados.token);


    let cliente = dados.cliente;
    let token = dados.token;

    if (token){        
        $("#menuCadastro").hide();
        $("#menuLogin").hide();

        $("#usuario").text(`${cliente.nomeCompleto}`)
    }  
}

//Pagina pricipal
setarPagina("html/paginas/home.html")

//Eventos do Menu
$("#menuHome").on('click', () => setarPagina('html/paginas/home.html'));
$("#menuLogin").on('click', () => setarPagina('html/paginas/login.html'));
$("#menuCadastro").on('click', () => setarPagina('html/paginas/cadastro.html'));
$("#menuSobre").on('click', () => setarPagina('html/paginas/sobre.html'));

checarLogin();