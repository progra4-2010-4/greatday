Escenario: Un usuario autenticado toma una foto
        Dado que estoy autenticado
        Cuando apreto "Tomar Foto"
        Entonces debería ver "Preview"
        Y debería ver "Guardar"
        Y debería ver "Descartar"
        Y debería ver "Tomar de nuevo"

Escenario: Un usuario autenticado mira sus fotografías
        Dado que estoy autenticado
        Cuando voy a la página de galeria
        Entonces debería ver "Mi album"
        Y debería ver "Crear Nuevo"
        Y debería ver "Eliminar"

Escenario: Un usuario autenticado descarga una foto
        Dado que estoy autenticado
        Cuando voy a la página miAlbum
        Entonces debería ver "Descagar"
        Y debería ver "Eliminar"
