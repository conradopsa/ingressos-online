'use strict';

function homeController() {

    let cartazes = new Cartazes();

    //Para testes
    for (let i = 1; i <= 20; i++) {
        let cartaz = new Cartaz("http://google.com/", "../../../html/imgs/sonic.jpg");
        cartazes.adicionar(cartaz);
    }

    let cartazesView = new CartazesView('#cartazes');
    cartazesView.update(cartazes);

}

