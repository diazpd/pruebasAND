# pruebasAND
Test de Pruebas AND

Para el correcto despliegue realice los siguientes pasos:

1) Descarge el repositorio.
2) Se debe tener eclipse 2019-09 o superior
3) Se debe tener instalado Tomcat 7. y configurado en un puerto diferente al 8080.
4) Se debe tener instalado porgreSQL 9.3.
5) se debe crear la base de datos: pruebacfa y luego correr el script de base de datos par crear la tabla.
6) Se debe instalado postman y soapUI para realizar las pruebas 
7) Tener instalado java 8



Una vez instalado con eclipse se deben importar los proyectos mvn, tanto el backend como el frontend a eclipse.

En eclise se debe agregar elk servidor Tomcar para desplegar el proyecto fronend.

Se debe realizar el buil de cada proyecto, tanto del backend como del frontend.

Al construir el proyecto backend se debe dirigir en linea de comandos y ejecutar "java -jar pruebas-and-demo-0.0.1-SNAPSHOT.jar" para que quede escuchando el api.

Luego de ejecutar el jar se debe copiar el "Using generated security password" y copiarlo al proyecto Front en la clase TaskClientUtil metodo retornarTokenRadicado().
Luego se puede desplegar la parte FrontEnd en tomcat.

Gracias

