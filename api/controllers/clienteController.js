"use strict";

const query = require('../utils/query');
const { executeQuery, executeFindOne } = query;

module.exports = {
    listarCliente: listarCliente,
    retornarCliente: retornarCliente,
    inserirCliente: inserirCliente,
    alterarCliente: alterarCliente,
    deletarCliente: deletarCliente
}

function listarCliente(req, res) {
    let q = req.query;

    let whereAnd = Object.entries(q)
        .map(entry => `${entry[0]}='${entry[1]}'`).join(' and ');

    let where = whereAnd ? `WHERE ${whereAnd}` : '';
    executeQuery(`SELECT * FROM cliente ${where}`, res);

}

function retornarCliente(req, res) {
    let { cpf } = req.params;
    let { email } = req.query;

    if (cpf || email) {
        let where = `WHERE cpf='${cpf}' or email='${email}'`;
        executeFindOne(`SELECT * FROM cliente ${where}`, res);
    }
}

function inserirCliente(req, res) {
    const body = req.body;

    let values = Object.entries(body)
        .map(entry => `'${entry[1]}'`).join(',');

    executeQuery(`INSERT INTO cliente VALUES(${values})`, res);
}

function alterarCliente(req, res) {
    /*const id = parseInt(req.params.id);
    const nome = req.body.nome.substring(0, 150);
    const cpf = req.body.cpf.substring(0, 11);
    executeQuery(`UPDATE cliente SET Nome='${nome}', CPF='${cpf}' WHERE ID=${id}`, res);*/
}

function deletarCliente(req, res) {
    const { cpf } = req.params;

    if (cpf)
        executeQuery(`DELETE FROM cliente WHERE CPF=${parseInt(cpf)}`, res);
}