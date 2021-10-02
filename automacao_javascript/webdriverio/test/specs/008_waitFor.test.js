const internetPage = require('./pages/internet.page')
const chai = require('chai')
const assert = chai.assert

describe("Trabalhando com elementos Habiitados", () => {
    it('Elemento Habilitado', ()=>{
        browser.url( browser.options.baseUrl+'/dynamic_controls')
        internetPage.clickEnableButton()
        internetPage.enable.waitForEnabled(100)
        assert.equal(true,  internetPage.enable.isEnabled())
    })

    it('Elemento Desabilitado', ()=>{
        browser.url( browser.options.baseUrl+'/dynamic_controls')
        assert.equal(false,  internetPage.enable.isEnabled())
    })

})