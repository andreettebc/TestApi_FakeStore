  Feature: Evaluacion Octubre NTT DATA

   Background:
      *  def urlBase = 'https://fakestoreapi.com/products'

        @Exercise1 @literalA
          Scenario Outline: Validación de productos
          * def nId = <id>-1
          Given url urlBase
          When method GET
          Then status 200
          * print response
          * def idresp = response[nId].id
          And match idresp == <id>
          * string rateresp = response[nId].rating.rate
          And match rateresp == "<rate>"
          * string categoryresp = response[nId].category
          And match categoryresp == "<categoria>"
          * string titulores = response[nId].title
          And match titulores == "<titulo>"

          Examples:
          | read ('classpath:../data/parametros.csv')

           @Exercise1 @literalB
            Scenario Outline: Validacion de categoria
            Given url urlBase
            And path '/category/' + "<categoria>"
            When method GET
            Then status 200
            * print response
            And match response == '#[6]'
            And match $..id contains <id>
            Examples:
              | read ('classpath:../data/parametros.csv')

