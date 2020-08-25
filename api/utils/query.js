"use strict";

const connection = require('../connectiondb');

function executeQuery(query, response) {
    connection.query(query, function (error, results, fields) {
        if (error)
            response.json(error);
        else
            response.json(results);
        //connection.end();
    })
}

function executeFindOne(query, response) {
    connection.query(query, function (error, results, fields) {
        if (error)
            response.json(error);
        else
            response.json(results.length >= 1 ? results[0] : null);
        //connection.end();
    })
}

function findOne(query, callback) {
    connection.query(query, (error, results, fields) => {

        let result = undefined;

        if (error)
            console.log(error);
        else
            result = results.length >= 1 ? results[0] : null;

        callback(result);

    });
}

module.exports = {
    executeQuery: executeQuery,
    executeFindOne: executeFindOne,
    findOne: findOne
}