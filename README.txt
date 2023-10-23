Por: Andrea Burgos Cano
Ejercicio 1: Fakestore
- Validar producto
- Validar categoria
 
# Arquetipo Básico de Pruebas Automatizadas para microservicios con Karate DSL

## Pre-requisitos

1. Gradle y tener agregado en el path de la variable de entorno
2. IDE IntelliJ IDEA
3. Java 11

## Complementosc

> **NOTA**:
> * Una vez obtenido Intellij es necesario instalar los plugins de Gherkin y Cucumber. (*[Guia de instalación plugins en intellij](https://www.jetbrains.com/help/idea/managing-plugins.html)*)
>

## Comandos

Para decargar todas las dependencias y no ejecutar los test
```bash
  gradle clean build -x test 
```
Para ejecutar todos los features por linea de comandos
```bash
  gradle clean test 
```
Para ejecutar solo los escenarios por medio de un tag determinado que se envia por linea de comando
```bash
  gradle clean test "-Dkarate.options=--tags @soap"


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