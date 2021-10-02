module.exports = {

    "Assert Enable" : (browser) => {
        browser
        .url("http://tutorials.actionqa.com/yt/nw/asserts/enabled.html")
        .assert.attributeEquals("#am-i-disabled", "disabled", "true")
        .setValue("#type-to-enable", "Amor manchao")
        .pause(2*1000)
        // .assert.attributeEquals("#am-i-disabled", "enabled", "true")
    },

    "Expect Enable" : (browser) => {
        browser.url(
            "http://tutorials.actionqa.com/yt/nw/asserts/enabled.html"
            );
            browser.expect.element("#am-i-disabled").to.not.be.enabled;
            browser.setValue("#type-to-enable", "Amor manchao")
            browser.expect.element("#am-i-disabled").to.be.enabled;

    },
};