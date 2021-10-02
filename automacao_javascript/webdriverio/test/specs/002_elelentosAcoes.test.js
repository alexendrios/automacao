const { checkbox } = require('./pages/internet.page')
const internetPage = require('./pages/internet.page')

describe('Test ação dos elementos', () =>{
    it('click no elemento', () =>{
        browser.url('/')
        internetPage.clickOnLink(1)
        expect(browser.getUrl()).toEqual('http://the-internet.herokuapp.com/abtest')
    })

    it('Retornando o Texto do Elemento', () =>{
        browser.url('/')
        var elemento = internetPage.getSpecificElementText(3)
        expect(elemento).toEqual('Basic Auth (user and pass: admin)')
    })

    it('Click Checkbox', () =>{
        internetPage.clickLink(6)
        internetPage.clickCheckBox(1)
        expect(internetPage.checkbox(1).isSelected()).toEqual(true)
    })

    it('Uncheck checkBox', () =>{
        browser.url('/')
        internetPage.clickLink(6)
        internetPage.clickCheckBox(3)
        expect(internetPage.checkbox(3).isSelected()).toEqual(false)
    })

    it('Preenchendo o formulário - Login', () =>{
       var user = 'tomsmith'
       var pass = 'SuperSecretPassword!'
       var text = 'Secure Area'

        browser.url('/')
        internetPage.clickLink(21)
        internetPage.enterUseName(user)
        internetPage.enterPassWord(pass)
        internetPage.clickLogin()
        expect(internetPage.loginText()).toEqual(text )
    })
})