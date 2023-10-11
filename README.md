# cypressCucumberPIL

Ejemplo básico de uso de cypress con cucumber

## Reporte

Para que se genere el reporte con el comando "generate:report" se debe tener
el archivo cucumber-json-formatter.exe en la carpeta raiz.
El mismo puede ser descargado de https://github.com/cucumber/json-formatter/
releases/tag/v19.0.0

- [x] llamadas xhr
- [x] Tienda: Hover en accesorio, audio (real-events), filtros de precios
- [x] Locadores que "desaparecen" (investigar)
- [x] Dexter: scroll y llegar al le coq sport (marcas) y hacer click ahí
- Commands parametrizado para el login y logout
- Se repite varias veces una acción, volver atrás (investigar) y cy.reload()
- HiperLibertad: Ventanas tipoPopUp
- Comportamineto de mobile a veces es diferente
- Probando clonacion
- Probando Rama Agus

## Flags de Configuración

- hideXHRInCommandLog: En **true** permite NO isualizar las llamadas al servicio de tipo XHR. En **false**..

## Instalacion de cypress-axe

Para instalar y utilizar cypress-axe el cual es una dependencia que nos permite hacer testing de
accesisibilidad con cypres lo primero es instalarlo, lo cual se hace con un npm i cypress-axe
(extraido de el siguiente link https://www.npmjs.com/package/cypress-axe) , mas documentacion
disponible en https://github.com/component-driven/cypress-axe , tambien no hay que olvidar
importar en e2e.js el comando import 'cypress-axe'

## Uso rapido de cypress-axe

Para utilizar cypress-axe se tienen que agregar estos comandos despues de por ejemplo cy.visit()
cy.injectAxe();
cy.checkA11y();
al momento de ser ejecutado el test, cypress-axe dira cuantos errores de accesibilidad tiene la web
estos mismos son mostrados y se pueden ver uno por uno en Specs ubicado a la izquierda
con el sub-nombre a11y error!
