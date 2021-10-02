const sec = 1000;
module.exports = {

    "Asserts Visible": (browser) =>{
        browser
        .url("http://tutorials.actionqa.com/yt/nw/asserts/assert-vs-verify.html")
        
        .assert.visible("#assert-verify-header")
        .assert.visible("#make-header-invisible")
        .click("#make-header-invisible")
        .assert.visible("#more-text")
        .assert.not.visible("#assert-verify-header")
    },

    "Expects Visible": (browser) =>{
        browser.url(
            "http://tutorials.actionqa.com/yt/nw/asserts/assert-vs-verify.html"
            );
        browser.expect.element("#assert-verify-header").to.be.visible;
        browser.expect.element("#make-header-invisible").to.be.visible;
        browser.click("#make-header-invisible");
        browser.expect.element("#more-text").to.be.visible;
        browser.expect.element("#assert-verify-header").to.be.not.visible;
    },

};