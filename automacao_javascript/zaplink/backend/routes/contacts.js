const contactController = require('../controllers/contacts.controller')

module.exports = [
    {
        method: 'GET',
        path: '/contacts',
        handler: contactController.list
    },
    {
        method: 'POST',
        path: '/contacts',
        handler: contactController.create
    }
]