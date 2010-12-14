#language: es
    Característica: Contar usuarios
        Para poder tener la cantidad de personas que nos vistan
        Como un usuario o visita
        Quiero estar identificado que se usuario o visita

Escenario: El Identificar si es Usuario o solo Visita
        Dado que no soy usuario no tengo los mismos derchos
        Cuando voy a la página raiz debe poder ver todo el contenido
        Entonces debería ver que soy visita o un usuario con todos los derechos
        Y debería de mostrar un contador en pantalla
    

