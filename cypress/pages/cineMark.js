class cineMark {
    //lOCADORES

    //Buscador boton
    getSearchButton(){
        return cy.get(".nav-btn.nav-search")
    }
    //Busador barra
    getSearchInput(){
        return cy.get("input[type='text']");
    }

    //Titulo a confirmar
    getTitulo(){
        return cy.get(".ch-movie-title");
    }

    //Sugerencia
    getSugerenciaCine(){
        return cy.get("ul#ch-search-result  ul  a");
    }

    //Cine a elegir 
    getCinelParaVer(){
        return cy.get(".ch-select.md-fl.md-pr-5.md-w-6.pt-10 > div[role='button']  .options > li:nth-of-type(2) > label")
    }

    //Titulo 
    getTitulo(){
        return cy.get(".ch-movie-title")
    }

    //Boton publicidad cierre
    getButtonClose(){
        return cy.get("div#PopTempSiniestra6 .ch-popup-close.ch-popup-closeme")
    }

    //Boton usuario
    getUsuario(){
        return cy.get("img#id_img_user")
    }

    //Promocion con Tarjeta
    getPromocion(){
        return cy.get(".img-responsive");
    }

}
    

module.exports = new cineMark();