var sec = 1000;

module.exports = {

    "Método Navgação - 01": (browser) => {
        browser
        .url("https://www.google.com.br")
        .url((result) => {
            console.log(result.value);
        })
        .pause(3 * sec)
        .end();
    },

    "Método Navgação - 02": (browser) => {
        browser
        .url("https://www.google.com.br")
        .url((result) => {
            console.log(result);
        })
        .pause(3 * sec)
        .end();
    },

};