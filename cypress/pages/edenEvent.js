class EdenEvent {
  //lOCADORES DE TITULO DE EVENTOS
  getEventTitle() {
    return cy.get(".fechas-funciones span").first();
  }
  //Fechas
  //Mes
  getEventMonth() {
    return cy.get(".fechas-funciones span").last();
  }

  //Dia
  getEventDay() {
    return cy.get("#calendarDay");
  }

  //Hora
  getEventHour() {
    return cy.get("#calendarTime");
  }
}

module.exports = new EdenEvent();