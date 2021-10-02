module.exports = {

    "Assert Element Present" : (browser) => {
        browser
        .url("http://tutorials.actionqa.com/yt/nw/asserts/assert-vs-verify.html")
        .assert.elementPresent("#some-list")
        .click("#remove-list")
        .assert.not.elementPresent("#some-list")
        .end();
    },

    "Expect Element Present" : (browser) => {
        browser.url(
            "http://tutorials.actionqa.com/yt/nw/asserts/assert-vs-verify.html"
            );
        browser.expect.element("#some-list").to.be.present;
        browser.click("#remove-list");
        browser.expect.element("#some-list").to.not.present;
        browser.end();    
    },
};