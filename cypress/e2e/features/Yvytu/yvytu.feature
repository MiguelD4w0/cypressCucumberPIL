Feature: Home Yvytu

    
    Scenario: Verificar elementos del menu superior
        Given que un usuario esta en la pagina de "Yvytu"
        Then visualiza en el header los botones "LA RESERVA, CABAÑAS, COMO LLEGAR, CONTACTO, DONÁ"

    
    Scenario: Verificar Imagenes del banner Principal
        Given que un usuario esta en la pagina de "Yvytu"
        Then se visualizan las imagenes "01, 02, 03, 04" en el banner

    
    Scenario: Verificar comportamiento del boton Ir arriba 
        Given que un usuario esta en la pagina de "Yvytu"
        Then el boton "Ir arriba" no se visualiza
        When el usuario hace scroll hasta "Conocé una historia mágica."
        Then el boton "Ir arriba" se visualiza
        When el usuario presiona el boton "Ir arriba"
        Then visualiza en el header los botones "LA RESERVA, CABAÑAS, COMO LLEGAR, CONTACTO, DONÁ"
        And el boton "Ir arriba" no se visualiza

    @focus
    Scenario: Verificar comportamiento del botón /reserva_yvytu
        Given que un usuario esta en la pagina de "Yvytu"
        Then visualiza el link "Reservar" redirecciona a "https://wa.me/5493757454400"
        And visualiza el link "reserva_yvytu" redirecciona a "https://www.instagram.com/reserva_yvytu/"
        And visualiza el link "Enviar mensaje" redirecciona a "https://wa.me/5493757454400"
