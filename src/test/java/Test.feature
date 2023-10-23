  Feature: API

    Background:
      *  def productpath = 'category/'
        @Exercise1 @literalA
          Scenario Outline: Validación de productos
          * def nId = <id>-1
          Given url fakestore
          When method GET
          Then status 200
          * def idresponse = response[nId].id
          And match idresponse == <id>
          * string rateresponse = response[nId].rating.rate
          And match rateresponse == "<rate>"
          * string categoryresponse = response[nId].category
          And match categoryresponse == "<category>"
          * string tituloresponse = response[nId].title
          And match tituloresponse == "<title>"

          Examples:
          | read ('classpath:../data/parametros.csv')

           @Exercise1 @literalB
            Scenario Outline: Validacion de categoria
            Given url fakestore
            And path productpath + "<category>"
            When method GET
            Then status 200
             * print response
            And match response == '#[6]'
            And match $..id contains <id>
            Examples:
              | read ('classpath:../data/parametros.csv')

