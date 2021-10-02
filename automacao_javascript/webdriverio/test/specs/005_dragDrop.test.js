const internetPage = require('./pages/internet.page')
const chai = require('chai')
const assert = chai.assert

describe('Trabalhando com Drag Drop', () => {

    it('Movendo Imagem Drag Drop', () =>{
        browser.url( browser.options.baseUrl+'/drag_and_drop')
        internetPage.moverImagemAImagemB()
        console.log(internetPage.retornandoHeadearB())
        browser.pause(5000)
    })

  
    
})
