
import { Cartaz } from '../../models/Cartaz.js';
import { Cartazes } from '../../models/Cartazes.js'
import { CartazesView } from '../../views/CartazesView.js';


export class HomeController{
    rodarCartazes(){

       

        let cartazes = new Cartazes();

        //Para testes
        for (let i=1; i<=20; i++){
            let cartaz = new Cartaz("http://google.com/", "../../../html/imgs/sonic.jpg");
            cartazes.adicionar(cartaz);
        }

        let cartazesView = new CartazesView('#cartazes');
        cartazesView.update(cartazes);
    }
}
