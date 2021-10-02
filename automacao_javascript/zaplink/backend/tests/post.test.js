const Code = require('@hapi/code');
const Lab = require('@hapi/lab');

const { init } = require('../server');

const { expect } = Code;
const { before, describe, it } = exports.lab = Lab.script();

describe('POST /contacts', () => {

    let rep;
    before(async () => {
        var server = await init();

        let contact = {
            name: "Lucas Henrrique",
            number: "33 888888888",
            description: "Orçamento de Aulas NodeJs"
        }

        rep = await server.inject({
            method: 'post',
            url: '/contacts',
            payload: contact
        });
    })

    it('Deve retornar 200', async () => {
        expect(rep.statusCode).to.equal(200)
    });

    it("Deve retornar o ID do contato", async () =>{
        expect(rep.result._id).to.be.a.object();
        expect(rep.result._id.toString().length).to.equal(24);
    });
});
