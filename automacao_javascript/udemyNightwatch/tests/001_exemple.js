module.exports = {
    "Primeiro teste": (browser) => {
        browser
        .url("http://tutorials.actionqa.com/yt/nw/simple.html")
        .click("body a")
        .pause(2 * 1000);
    },
}