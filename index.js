
'use strict';

import { HomeController } from './js/controllers/paginas/HomeController.js'





function setarPagina(pagina) {
    $("#conteudo").load(pagina);
}

setarPagina("html/paginas/home.html");

$("#menuHome").on('click', () => setarPagina('html/paginas/home.html'));
$("#menuLogin").on('click', () => setarPagina('html/paginas/login.html'));
$("#menuCadastro").on('click', () => setarPagina('html/paginas/cadastro.html'));
$("#menuSobre").on('click', () => setarPagina('html/paginas/sobre.html'));


let homeController = new HomeController();
homeController.rodarCartazes();
