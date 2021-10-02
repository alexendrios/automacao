module.exports = {

    "Aguardando Elemento Visível": (browser) => {
        browser
        .url("http://tutorials.actionqa.com/yt/nw/asserts/wait-for-element.html")
        .waitForElementVisible("#element-1", 8*1000)
        .waitForElementVisible("#element-2", 8*1000)
        .assert.not.elementPresent("#element-1")
        .waitForElementNotPresent("#element-2", 8*1000)
        .assert.not.elementPresent("#element-2")
    },
};