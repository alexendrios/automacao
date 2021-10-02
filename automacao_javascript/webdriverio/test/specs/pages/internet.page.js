const { assert } = require("chai")

class Internet {

    //mapeamentos
    get pageHeader() { return $('h1.heading') }
    get subHeading() { return $('h2') }
    get pageFooter() { return $('#page-footer') }
    get parent() { return $('ul') }
    get childElements() { return this.parent.$$('li') }
    get fistLink() { return $('ul li:nth-child(1) a') }
    get userName() { return $('#username') }
    get passWord() { return $('#password') }
    get buttonLogin() { return $('#login  button') }
    get textLogin() { return $('h2') }
    get keyPress() { return $('#target') }
    get keyResult() { return $('#result') }
    get window() { return $('.example a') }
    get windowDetail() { return $('h3') }
    get iframeElemento() { return $('#mce_0_ifr') }
    get textAreaIfrae() { return $('#tinymce') }
    get dragDropA() { return $('#column-a') }
    get dragDropB() { return $('#column-b') }
    get headerImageB() { return $('#column-b  header') }
    get dropdowMenu() { return $('#dropdown') }
    get result() { return $('#result') }
    get enable() { return $('#input-example input[type="text"]') }
    get buttonDiseble() { return $('#input-example button[type=button]') }
    get exampleButton() { return $('.example button') }

    deletarButton(index) { return $('#elements button:nth-child(' + index + ')') }

    javascriptAlertButton(index) { return $('.example  li:nth-child(' + index + ') button') }

    dropdowMenuOption(index) { return $('#dropdown option:nth-child(' + index + ')') }
    specificChildElement(index) { return this.parent.$('li:nth-child(' + index + ')') }
    link(index) { return $('ul li:nth-child(' + index + ') a') }
    checkbox(index) { return $('#checkboxes input:nth-child(' + index + ')') }
    figure(index) { return $('.example .figure:nth-child(' + index + ')') }
    figureDetails(index) { return $('.example .figure:nth-child(' + index + ') .figcaption') }
    frame(index) { return $('ul  li:nth-child(' + index + ') a') }

    clickEnableButton() {
        this.buttonDiseble.waitForDisplayed()
        this.buttonDiseble.click()
    }

    clickButtonAlert(index) {
        this.javascriptAlertButton(index).waitForDisplayed()
        this.javascriptAlertButton(index).click()
    }

    clickDropdowMenu() {
        this.dropdowMenu.isDisplayed()
        this.dropdowMenu.click()
    }

    clickDropdowMenuOprion(index) {
        this.dropdowMenuOption(index).isDisplayed()
        this.dropdowMenuOption(index).click()
    }

    moverImagemAImagemB() {
        this.dragDropA.isDisplayed()
        this.dragDropB.isDisplayed()
        this.dragDropA.dragAndDrop(this.dragDropB)
    }

    retornandoHeadearB() {
        this.headerImageB.isDisplayed()
        return this.headerImageB.getText()
    }

    getResult() {
        this.result.isDisplayed()
        return this.result.getText()
    }

    getLiText() {

        this.childElements.filter((element) => {
            console.log(element.getText())
        })

    }

    getSpecificElementText(index) {
        this.specificChildElement(index).waitForDisplayed()
        return this.specificChildElement(index).getText()
    }

    clickOnLink() {
        if (this.fistLink.isDisplayed() === true) {
            this.fistLink.click()
        }
    }

    clickLink(index) {
        this.link(index).waitForDisplayed()
        this.link(index).click()
    }

    clickCheckBox(index) {
        this.checkbox(index).waitForDisplayed()
        this.checkbox(index).click()
    }

    enterUseName(user) {
        this.userName.waitForDisplayed()
        this.userName.setValue(user)
    }

    enterPassWord(pass) {
        this.passWord.isDisplayed()
        this.passWord.setValue(pass)
    }

    clickLogin() {
        this.buttonLogin.isDisplayed()
        this.buttonLogin.click()
    }

    loginText() {
        this.textLogin.isDisplayed()
        return this.textLogin.getText()
    }

    hoverOmFigure(index) {
        this.figure(index).isDisplayed()
        this.figure(index).moveTo(1, 1)
    }

    getHoverDatails(index) {
        this.figureDetails(index).isDisplayed()
        return this.figureDetails(index).getText()
    }

    setKey(text) {
        this.keyPress.isDisplayed()
        this.keyPress.keys(text)
    }

    getKeyResult() {
        this.keyResult.isDisplayed()
        return this.keyResult.getText()
    }

    scrollToPageFooter() {
        this.pageFooter.isDisplayed()
        this.pageFooter.scrollIntoView()
    }

    getDetail() {
        this.windowDetail.isDisplayed()
        return this.windowDetail.getText()
    }

    clickFrame(index) {
        this.frame(index).isDisplayed()
        this.frame(index).click()
    }

    escreverTextArea(texto) {
        this.textAreaIfrae.isDisplayed()
        this.textAreaIfrae.clearValue()
        this.textAreaIfrae.setValue(texto)
    }



}
module.exports = new Internet()

