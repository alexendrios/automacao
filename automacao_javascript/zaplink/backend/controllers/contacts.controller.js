const ContactModel = require('../models/contact.model')

module.exports = {
    async create(request, h) {

        const context = new ContactModel({
            name: request.payload.name,
            number: request.payload.number,
            description: request.payload.description
        });
       let result = await context.save();
        return h.response(result).code(200);
    },

    async list(request, h) {
        const contacts = await ContactModel.find().exec();
        return contacts;
    }
}
