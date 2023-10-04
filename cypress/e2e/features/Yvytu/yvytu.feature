@regresion @yvytu
Feature: Home Yvytu

    @menu
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


    Scenario: Verificar comportamiento del botón /reserva_yvytu
        Given que un usuario esta en la pagina de "Yvytu"
        Then visualiza el link "Reservar" redirecciona a "https://wa.me/5493757454400"
        And visualiza el link "reserva_yvytu" redirecciona a "https://www.instagram.com/reserva_yvytu/"
        And visualiza el link "Enviar mensaje" redirecciona a "https://wa.me/5493757454400"

    Scenario: Verificar cabañas
        Given que un usuario esta en la pagina de "Yvytu"
        When el usuario hace scroll hasta "Nuestras cabañas"
        Then se verifica que la cabaña "1" llamada "Yaguareté" posee las siguientes caracteristicas "Para 4 personas, 2 habitaciones, Baño con ducha, Ropa de cama, Wi-fi, Aire acondicionado"
        And se verifica que la cabaña "2" llamada "Arasari" posee las siguientes caracteristicas "Para 4 personas, 2 habitaciones, Baño con ducha, Ropa de cama, Wi-fi"

    Scenario Outline: Verificar cabaña <num>: <nombreCab>
        Given que un usuario esta en la pagina de "Yvytu"
        When el usuario hace scroll hasta "Nuestras cabañas"
        Then se verifica que la cabaña "<num>" llamada "<nombreCab>" posee las siguientes caracteristicas "<item>"
        Examples:
            | num | nombreCab | item                                                                                     |
            | 1   | Yaguareté | Para 4 personas, 2 habitaciones, Baño con ducha, Ropa de cama, Wi-fi, Aire acondicionado |
            | 2   | Arasari   | Para 4 personas, 2 habitaciones, Baño con ducha, Ropa de cama, Wi-fi                     |

