
function addCartaz(imagemSrc){
    let ul = document.getElementById("cartazes").getElementsByTagName("ul")[0];

    ul.innerHTML += `<a href=""><li><img src="${imagemSrc}"></img></li></a>`;
}

for (let i=0; i<20; i++)
    addCartaz(`imgs/cartazes/sonic.jpg`);