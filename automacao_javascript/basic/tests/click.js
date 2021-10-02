var sec = 1000;

module.exports = {
    "Método Click": (browser) => {
        browser
        .url("http://tutorials.actionqa.com/yt/nw/basic/click.html")
        .click("#surprise-button")
        .pause(3 * sec)
        .end();
    },
};