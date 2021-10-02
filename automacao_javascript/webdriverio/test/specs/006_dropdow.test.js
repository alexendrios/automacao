const internetPage = require('./pages/internet.page')
const chai = require('chai')
const assert = chai.assert

describe('Opção dropdow', () =>{
    it('Escolhendo a opção 1 do dropdow', () =>{
        browser.url( browser.options.baseUrl+'/dropdown')
        internetPage.clickDropdowMenu()
        internetPage.clickDropdowMenuOprion(1)
        assert.equal(true, internetPage.dropdowMenuOption(1).isSelected())
    })

    it('Escolhendo a opção 2 do dropdow', () =>{
        browser.url( browser.options.baseUrl+'/dropdown')
        internetPage.clickDropdowMenu()
        internetPage.clickDropdowMenuOprion(2)
        assert.equal(true, internetPage.dropdowMenuOption(2).isSelected())
    })
})