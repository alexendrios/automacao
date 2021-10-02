// https://docs.cypress.io/api/introduction/api.html

describe('Dashboard', () => {

  describe('Quando eu acesso o Dashboard', () => {
    before(() => {
      cy.visit('/')
      cy.contains('h4', 'Seu Gerenciador Digital de Contatos')
    });

    it('Então devo ver a Lista de Contatos', () => {
      //cy.get('.card').should('have.length', 3)
      cy.get('.card', {timeout: 5000}).then((elements) => {
        expect(elements.length > 0).to.be.true;
      });
    });
  });
})
