import { When, Then } from "@badeball/cypress-cucumber-preprocessor";
const cineMarkHome = require("../../pages/cineMark")

When (`escribe {string} en el campo buscador de cinemark`, (palabraAbuscarCine) => {
    cineMarkHome.getSearchInput().type(palabraAbuscarCine);
});

When (`hace click en el usuario de cinerMark`, () => {
    cineMarkHome.getUsuario().click();
});

Then (`cierra el pop up apretando el boton cerrar`, () => {
    cineMarkHome.getButtonClose().click();
});

Then (`hace click en el boton buscar de cinerMark`, () => {
    cineMarkHome.getSearchButton().click();
});

Then (`hace click en la sugerencia {string} de cinemark`, (sugerencia) => {
    cineMarkHome.getSugerenciaCine().contains(sugerencia).click();
});

Then (`selecciona el cine donde ver la pelicula`, () => {
    cineMarkHome.getCinelParaVer().click();
});

Then (`se verifica que el título es {string} en la web`, (tituloConfirmado) => {
    cineMarkHome.getTitulo().should("have.text" , tituloConfirmado);
});

Then (`se verificar que estilo de los beneficios con tarjeta black`, () => {
    cineMarkHome.getPromocion().should("have.css", "background", "rgba(0, 0, 0, 0) none repeat scroll 0% 0% / auto padding-box border-box");
});

Then (`asegurar que la accesibilidad de la web sea optima`, () => {
    cy.injectAxe();
    cy.checkA11y();
});

