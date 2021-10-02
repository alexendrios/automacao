const internetPage = require('./pages/internet.page')
const chai = require('chai')
const assert = chai.assert

describe('Interação com Allert JavaScript', () =>{
    it('Allert - retornando o Texto - Allert', () => {
        browser.url( browser.options.baseUrl+'/javascript_alerts')
        internetPage.clickButtonAlert(1)
        assert.equal('I am a JS Alert', browser.getAlertText())  
    })

    it('Aceitando - Allert', () => {
        internetPage.clickButtonAlert(1)
        assert.equal('You successfuly clicked an alert', internetPage.getKeyResult())  
    })

    it('Clicando no botão OK - Allert', () => {
        internetPage.clickButtonAlert(2)
        browser.acceptAlert() 
        assert.equal('You clicked: Ok', internetPage.getKeyResult()) 
    })

    it('Clicando no botão Cancel - Allert', () => {
        internetPage.clickButtonAlert(2)
        browser.dismissAlert()
        assert.equal('You clicked: Cancel', internetPage.getResult()) 
    })

    it('Entrada de dados - allert', () => {
        var texto = "Olá, estou interagindo com allert"
        internetPage.clickButtonAlert(3)
        browser.sendAlertText(texto)
        browser.acceptAlert()
        assert.equal('You entered: Olá, estou interagindo com allert', internetPage.getKeyResult()) 
    })
})