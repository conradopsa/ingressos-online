"use strict";

export class Cartazes{
    cartazes = []

    adicionar(cartaz){
        this.cartazes.push(cartaz);
    }

    retornarCartazes(){
        return [].concat(this.cartazes);
    }
}