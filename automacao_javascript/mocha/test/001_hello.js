// Operações matemáticas

// import pacote
var assert = require('assert');

describe("Operações matemática - Test Suite", function(){

    it("Somando duas variáveis", function(){
        var a = 4;
        var b = 2;

        var c = a + b;

        assert.equal(c, 6)
    });

    it("Subtraindo duas variáveis", function(){
        var a = 4;
        var b = 2;

        var c = a - b;
        assert.equal(c, 2)
    });

    it("Multiplicando duas variáveis", function(){
        var a = 4;
        var b = 2;

        var c = a * b;
        assert.equal(c, 8)
    });

    it("Dividindo duas variáveis", function(){
        var a = 4;
        var b = 2;

        var c = a / b;
        assert.equal(c, 2)
    });

});