describe('TWP home Page', () =>{
    it('Deve exibir o título da página', () =>{
        cy.visit('http://training-wheels-protocol.herokuapp.com/')
        cy.title().should('contain', 'Training Wheels Protocol')
    })
})