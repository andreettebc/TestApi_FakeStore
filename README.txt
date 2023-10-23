Por: Andrea Burgos Cano
Ejercicio 1: Fakestore
- Validar producto
- Validar categoria
 
 # Evaluacion de APIS

 ## Pre-requisitos

 1. Gradle y tener agregado en el path de la variable de entorno
 2. IDE IntelliJ IDEA
 3. Java 11

 ## Complementos

 > **NOTA**:
 > * Una vez obtenido Intellij es necesario instalar los plugins de Gherkin y Cucumber. (*[Guia de instalación plugins en intellij](https://www.jetbrains.com/help/idea/managing-plugins.html)*)
 >

 ## Ejecución local

 Clonar el proyecto

 ```bash
   git clone https://github.com/andrettebc/AutomatizacionApi
 ```
 Entrar al directorio del proyecto

 ```bash
   cd karate-gradle
 ```
 ## Comandos

 Para decargar todas las dependencias y no ejecutar los test
 ```bash
   gradle clean build -x test
 ```

 Para ejecutar el escenario:

 Dirijase al path :
 ```bash
 src\test\java\
 ```
 En el archivo **Test.feature** Presionar Click derecho y ejecutar la opcion > Run 'Feature: Test'


 ## Reporte
 Luego de la ejecución, para abrir el reporte dirigirse abrir el archivo **karate-summary.html** que se encuentra en el siguiente path:
 ```bash
 EvalKarateNttdata\target\karate-reports\karate-summary.html
 ```


 > **NOTA**:
 > * Para ejecutar el proyecto se necesita Java JDK 11 y Gradle con la versión 7.6 o superior.
 > * Para poder instalar gradle en windows podemos seguir el siguiente tutorial https://www.geeksforgeeks.org/how-to-install-gradle-on-windows/.
 > * Luego de la ejecucion de pruebas, los reportes se generan en la carpeta **build/karate-reports/**, y el archivo de resumen es el **karate-summary.html**

 ## Construido con:
 La automatización fue desarrollada con:

 * BDD - Estrategia de desarrollo
 * Gradle - Manejador de dependencias
 * Gherkin - Lenguaje Business Readable DSL (Lenguaje especifico de dominio legible por el negocio)

 ## Documentacion

 [Karate DSL](https://github.com/karatelabs/karate)

## Ejecucion
- Para ejecutar el proyecto
        1. Abrir el IDE IntellijIdea
        2. Ingresar en la opción File -> Open y ubicarse en el proyecto 
        3. Esperar unos minutos para que se descargen las despendencias 
        4. Opciòn 1: Ubicarse en Test.feature y ejecutar manualmente cada escenario.
        5. Opción 2: Abrir la terminal de Intellij y ejecutar mediante linea de comando:
                        ./gradlew clean test "-Dkarate.options=--tags @Exercise1"
                      En el comando la etiqueta @Exercise1 permitirá ejecutar todos los escenarios

          6. Reporte Karate Una vez finalizada la ejecución se crea el informe realizado para visualizarlo ubicarse en la ruta build\karate-reports\karate-summary.html