const sec = 1000;
module.exports = {
    "Dropdow - Set Value": (browser) =>{
        browser
        .url("http://tutorials.actionqa.com/yt/nw/basic/drop-down.html")
        .setValue("#dropdown", "Thor")
        .pause(2*sec)
        .end()
    },

    "Dropdow - on Click": (browser) =>{
        browser
        .url("http://tutorials.actionqa.com/yt/nw/basic/drop-down.html")
        .click("#dropdown  option:nth-child(4)" )
        .pause(2*sec)
        .end()
    }
};

