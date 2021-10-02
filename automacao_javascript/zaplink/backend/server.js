'use strict';

const contactsRoutes = require('./routes/contacts');
const Hapi = require('@hapi/hapi');
const mongoose = require('mongoose');
const mongoUrl = "mongodb+srv://admin:admin@cluster0.e7lba.mongodb.net/zaplinkdb?retryWrites=true&w=majority";

mongoose.connect(mongoUrl, { useNewUrlParser: true, useUnifiedTopology: true})

mongoose.connection.on("connected", () => {
    console.log('MongoDB Connected');
});

mongoose.connection.on("error", () => {
    console.log('MongoDB Error' + error);
});

const server = Hapi.server({
    port: 3000,
    host: 'localhost',
    routes: {
        cors: {
            origin: ['*']
        },
    },
});

server.route({
    method: 'GET',
    path: '/',
    handler: (request, h) => {

        return { message: 'Welcome to Zaplink api' };
    }
});

server.route(contactsRoutes);
server.start((err) =>{
    if(err){
        throw err;
    }
    console.log('Server running on %s', server.info.uri);
});



process.on('unhandledRejection', (err) => {
    console.log(err);
    process.exit(1);
});

exports.init = async () => {
    return server;
}