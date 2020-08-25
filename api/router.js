"use strict";

const express = require('express');
const router = express.Router();

const bodyParser = require('body-parser');

const clienteController = require('./controllers/clienteController');
const authController = require('./controllers/authController');

const authMiddleware = require('./middlewares/auth')

//Liberando acesso CORS para qualquer front-end
router.use(function (req, res, next) {
    res.header('Access-Control-Allow-Origin', req.get('Origin') || '*');
    res.header('Access-Control-Allow-Credentials', 'true');
    res.header('Access-Control-Allow-Methods', 'GET,HEAD,PUT,PATCH,POST,DELETE');
    res.header('Access-Control-Expose-Headers', 'Content-Length');
    res.header('Access-Control-Allow-Headers', 'Accept, Authorization, Content-Type, X-Requested-With, Range');

    if (req.method === 'OPTIONS')
        return res.sendStatus(200);
    else
        return next();
});

//Configurando o body parser para pegar POSTS mais tarde
router.use(bodyParser.urlencoded({ extended: true }));
router.use(bodyParser.json());

//Autenticação
router.post('/auth', authController.autenticar);

router.get('/', (req, res) => res.json({ message: 'Funcionando!' }));


router.post('/clientes', clienteController.inserirCliente);

//Middleware que irá barrar o que não estiver autenticado
router.use(authMiddleware);

//Rotas para Cliente
router.get('/clientes', clienteController.listarCliente);
router.get('/clientes/:cpf?', clienteController.retornarCliente);
//router.delete('/clientes/:cpf', clienteController.deletarCliente);
//router.patch('/clientes/:id', clienteController.alterarCliente);

module.exports = router;