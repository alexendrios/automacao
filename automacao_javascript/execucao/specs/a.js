module.exports = {
    tags: ["start"],
    "a test": (browser) =>{
        browser
        .assert.ok(true)
        .end();
    },
};