Feature: Consultar el tipo de cambio por año y mes

  Scenario Outline: Consulta tipo de cambio
    Given url "https://api.apis.net.pe/v2/sunat/tipo-cambio"
    And param year = <anyo>
    And param month = <mes>
    And header Accept = "application/json"
    And header Authorization = 'Bearer apis-token-11951.whrE5hE9vdDcU2lDXUYjQTFCmsHhXbUS'
    When method get
    Then status 200
    Examples:
      | mes | anyo |
      | 12  | 2024 |
      | 11  | 2024 |

#
#  curl --location 'https://api.apis.net.pe/v2/sunat/tipo-cambio?year=2024&month=12' \
#  --header 'Accept: application/json' \
#  --header 'Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjg2NTYsImlhdCI6MTczMzE1NjQ1MSwibmJmIjoxNzMzMTU2NDUxLCJqdGkiOiI5NTE2MjI1OS1mOTRkLTQ2MWEtYjJiYi1jMzk2MTgzZDJhZDciLCJleHAiOjE3MzMxNzQ0NTEsImlzcyI6ImFwaXMubmV0LnBlIiwidHlwZSI6ImFjY2VzcyIsImZyZXNoIjpmYWxzZX0.rlWJRl_utvl3HwhRkOFeKty4fAxNkn7Ia73RGfDY7yg'
#