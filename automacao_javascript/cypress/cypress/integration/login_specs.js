describe('login', () =>{

    before(() =>{    
         cy.visit('http://training-wheels-protocol.herokuapp.com/login')
         //check point
         cy.get("#login").should('be.visible')
    })

    it('Quando submeto minhas credenciais', () =>{
        cy.get('#userId').type('stark')
        cy.get('#passId').type('jarvis!')
        cy.get('.btn-login').click()
    })

    it('Então devo ver a área Logada', () =>{
        //Validação
        cy.get('#flash').should('contain', "Você acessou a área logada")
    })
})