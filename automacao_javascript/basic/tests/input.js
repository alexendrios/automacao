const sec = 1000;

module.exports = {

    "Método Inputs - usando css": (browser) => {
        browser
        .url("http://tutorials.actionqa.com/yt/nw/basic/text-input.html")
        .setValue("#text-input", "As ávores somos nozes")
        .pause(3 * sec)
        .clearValue("#text-input")
        .end();
    },

    "Método Inputs - usando xpath": (browser) => {
        browser
        .url("http://tutorials.actionqa.com/yt/nw/basic/text-input.html")
        .useXpath()
        .setValue('//*[@id="text-input"]', "As ávores somos nozes")
        .pause(3 * sec)
        .clearValue('//*[@id="text-input"]')
        .end();
    },

    "Método Inputs - usando Keys - Passando um texto": (browser) => {
        browser
        .url("http://tutorials.actionqa.com/yt/nw/basic/text-input.html")
        .useCss()
        .click("#text-input")
        .pause(1 * sec)
        .keys("Olá estamos usando o métod keys")
        .pause(3 * sec)

        .end();
    },

    "Método Inputs - usando Keys - Teclado - 01": (browser) => {
        browser
        .url("http://tutorials.actionqa.com/yt/nw/basic/text-input.html")
        .useCss()
        .click("#text-input")
        .keys(["a", "b", "c", "d", "1"])
        .pause(3 * sec)

        .end();
    },

    "Método Inputs - usando Keys - Teclado - 02": (browser) => {
        browser
        .url("http://tutorials.actionqa.com/yt/nw/basic/text-input.html")
        .useCss()
        .click("#text-input")
        .keys("Olá estamos usando o métod keys")
        .pause(2 * sec)
        .keys(browser.Keys.CONTROL)
        .keys("a")
        .keys(browser.Keys.NULL)
        .keys(browser.Keys.DELETE)
        .pause(2*sec)
        .end();
    },

};