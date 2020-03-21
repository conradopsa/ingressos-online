
import { View } from '../views/View.js';

export class CartazesView extends View{

    update(model) {
        let cartazes = model.retornarCartazes();
        this.elemento.append( "<ul></ul>" );

        

        let ul = this.elemento.find("ul")[0];


        ul.innerHTML = cartazes
                            .map((cartaz) => { 
                                return  `<a href="${cartaz.link}"><li><img src="${cartaz.imagemSrc}"></img></li></a>` 
                            }).join('');

    }
}

