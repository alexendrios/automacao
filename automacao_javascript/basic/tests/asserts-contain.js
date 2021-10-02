module.exports = {
    "Asserts contém texto": (browser) => {
        browser
        .url("http://tutorials.actionqa.com/yt/nw/asserts/assert-vs-verify.html")
        .assert.containsText("#more-text", "Hello! I'm some more text!")
        .click("#change-text")
        .assert.containsText("#more-text", "You changed me!")
        .assert.not.containsText("#more-text", "Hello! I'm some more text!")
        .end()
    },

    "Expect contém texto": (browser) => {
        browser.url(
            "http://tutorials.actionqa.com/yt/nw/asserts/assert-vs-verify.html"
            );
        browser.expect.element("#more-text").text.to.equal("Hello! I'm some more text!");
        browser
        .click("#change-text")
        browser.expect.element("#more-text").text.to.contain("You changed me!");
        browser.expect.element("#more-text").text.not.contain("Hello! I'm some more text!");
        browser.end();
    },
};