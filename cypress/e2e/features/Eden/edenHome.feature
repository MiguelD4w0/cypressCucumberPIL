Feature: Test de la pagina de Eden


    Scenario: Verificar funcionalidad del buscador
        Given que un usuario esta en la pagina de "Eden"
        When escribe "rock" en el campo buscador
        And hace click en la sugerencia "Cosquin Rock 2024"
        Then se verifica que el título es "Cosquin Rock 2024 "
        And la fecha es "10" de "febrero" a las "14:00" Hs

    Scenario: Verificar funcionalidad del buscador
        Given que un usuario esta en la pagina de "Eden"
        When escribe "rock" en el campo buscador
        And hace click en la sugerencia "Cosquin Rock 2024"
        Then se verifican los siguientes datos del evento
            | titulo | Cosquin Rock 2024 |
            | dia    | 10                |
            | mes    | febrero           |
            | hora   | 14:00             |


    Scenario: Verficar los precios de 1 cuartetos
        Given que un usuario esta en la pagina de "Eden"
        When presiona el boton del header "CUARTETOS"
        And presiona el boton Ver de "El Loco Amato"
        Then el precio que se visualiza tiene el formato correcto

    Scenario: Verificar precio usando Intercept
        Given que un usuario esta en la pagina de "Eden"
        When presiona el boton del header "CUARTETOS"
        And presiona el boton Ver de "2"
        Then el precio que se visualiza tiene el formato correcto validado con la respuesta del intercept

    Scenario: Verificar precio usando llamada al servicio
        Given que un usuario esta en la pagina de "Eden"
        When presiona el boton del header "CUARTETOS"
        And presiona el boton Ver de "1"
        Then el precio que se visualiza tiene el formato correcto validado con el servicio