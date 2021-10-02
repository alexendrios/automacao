const internetPage = require('./pages/internet.page')
const chai = require('chai')
const assert = chai.assert

describe('Trabalhando com Janelas/Iframe', () => {

    it('Trabalando com foco da nova janela', () => {
        browser.url('/')
        internetPage.clickLink(33)
        internetPage.window.isDisplayed()
        internetPage.window.click()
        browser.switchWindow('http://the-internet.herokuapp.com/windows/new')
        assert.equal(internetPage.getDetail(), 'New Window')
    })

    it('Trabaçhando com o foco em Iframe', () =>{
        browser.url('/')
        internetPage.clickLink(22)
        internetPage.clickFrame(2)
        internetPage.iframeElemento.isDisplayed()
        browser.switchToFrame(internetPage.iframeElemento)
        internetPage.escreverTextArea("Os cachorros Latem")
        assert.equal("Os cachorros Latem", internetPage.textAreaIfrae.getText())
    })

})