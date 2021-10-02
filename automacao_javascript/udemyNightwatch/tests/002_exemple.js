module.exports = {
    "Estratégias css ": (browser) => {
        browser
        .url("http://tutorials.actionqa.com/yt/nw/locator-01.html")
        .setValue("#text-input", "teste")
        .pause(2 * 1000);
    },

    "Estratégia xpath": (browser) => {
        browser
        .url("http://tutorials.actionqa.com/yt/nw/locator-01.html")
        .useXpath()
        .setValue('//*[@id="text-input"]', "teste")
        .pause(2 * 1000);
    }
}