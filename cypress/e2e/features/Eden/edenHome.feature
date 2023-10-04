Feature: Test de la pagina de Eden


    Scenario: Verificar funcionalidad del buscador
        Given que un usuario esta en la pagina de "Eden"
        When escribe "rock" en el campo buscador
        And hace click en la sugerencia "Cosquin Rock 2024"
        Then se verifica que el título es "Cosquin Rock 2024 "
        And la fecha es "10" de "febrero" a las "14:00" Hs
    @focus
    Scenario: Verificar funcionalidad del buscador
        Given que un usuario esta en la pagina de "Eden"
        When escribe "rock" en el campo buscador
        And hace click en la sugerencia "Cosquin Rock 2024"
        Then se verifican los siguientes datos del evento
            | titulo | Cosquin Rock 2024 |
            | dia    | 10                |
            | mes    | febrero           |
            | hora   | 14:00             |