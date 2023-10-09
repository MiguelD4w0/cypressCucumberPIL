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
