const internetPage = require('./pages/internet.page')

describe("Interação com os Elementos", function () {
   
    it("retornando o texto dos Elementos", () => {

        browser.url('/')
        let text = $("h2").getText()
        console.log(text)

        let text2 = $(".heading").getText()
        console.log(text2)
    })

    it('Page Objects', () => {
        internetPage.getLiText()
        internetPage.getSpecificElementText(3)
    })

    it("Is footer Displayer", () => {

        console.log(internetPage.pageFooter.isDisplayed())

    })

    it("Elemento Existe", () => {

        console.log(internetPage.pageHeader.isExisting())

    })

    it('Verificando se o Footer está visível na janela', () => {
        console.log(internetPage.pageFooter.isDisplayedInViewport())
    })

    it('Verificando se o Header está visível na janela', () => {
        console.log(internetPage.pageHeader.isDisplayedInViewport())
    })

    it('Is Enabled', () => {
        console.log(internetPage.subHeading.isEnabled())
    })

}) 