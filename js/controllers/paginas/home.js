function addCartaz(imagemSrc) {
    let ul = document
        .querySelector('#cartazes')
        .getElementsByTagName("ul")[0];

    ul.innerHTML += `<a href=""><li><img src="${imagemSrc}"></img></li></a>`;
}

console.log("teste");

for (let i = 0; i < 20; i++)
    addCartaz(`../../../html/imgs/sonic.jpg`);
