const internetPage = require('./pages/internet.page')
const chai = require('chai')
const assert = chai.assert

describe('Acitions api Web', () => {
    it('Açoes do Mouse usando movoTo - figure 1', () => {
        var index = 3
        browser.url('/')
        internetPage.clickLink(25)
        internetPage.hoverOmFigure(index)
        assert.equal(internetPage.getHoverDatails(index), 'name: user1\nView profile')
    })

    it('Açoes do Mouse usando movoTo - figure 2', () => {
        var index = 4
        browser.url('/')
        internetPage.clickLink(25)
        internetPage.hoverOmFigure(index)
        assert.equal(internetPage.getHoverDatails(index), 'name: user2\nView profile')
    })

    it('Açoes do Mouse usando movoTo - figure 3', () => {
        var index = 5
        browser.url('/')
        internetPage.clickLink(25)
        internetPage.hoverOmFigure(index)
        assert.equal(internetPage.getHoverDatails(index), 'name: user3\nView profile')
    })

    it('Enviando Teclas do Teclado', () => {
       var tecla = "INSERT"
        browser.url('/')
        internetPage.clickLink(31)
        internetPage.setKey(tecla)
        assert.exists(internetPage.getKeyResult(), tecla)

    })

    it('Scroll', () => {
        browser.url('/')
        internetPage.scrollToPageFooter()
        assert.equal(internetPage.pageFooter.isDisplayedInViewport(), true )
    })

})