Feature: Test de la pagina de CineMark Agus tarea

    Scenario: Verificar funcionalidad del buscador
        Given que un usuario esta en la pagina de "cineMark"
        And cierra el pop up apretando el boton cerrar
        And hace click en el boton buscar de cinerMark
        When escribe "moana" en el campo buscador de cinemark
        And hace click en la sugerencia "MOANA UN MAR DE AVENTURAS" de cinemark
        And selecciona el cine donde ver la pelicula
        Then se verifica que el título es "MOANA UN MAR DE AVENTURAS" en la web

    Scenario: Verificar estilo de Promocion
        Given que un usuario esta en la pagina de "cineMark"
        And cierra el pop up apretando el boton cerrar
        When hace click en el usuario de cinerMark
        Then se verificar que estilo de los beneficios con tarjeta black

    Scenario: Verificar posibles problemas de accesibilidad en cinemark
        Given que un usuario esta en la pagina de "cineMark"
        And cierra el pop up apretando el boton cerrar
        Then asegurar que la accesibilidad de la web sea optima