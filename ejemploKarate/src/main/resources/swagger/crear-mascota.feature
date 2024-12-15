Feature: API Mascotas de Swagger

  Background:
    Given url "https://petstore.swagger.io/v2"

  Scenario Outline: Crear Mascota
    And path "/pet"
    And request
    """
    {
      "id": <idPet>,
      "category": {
        "id": 2,
        "name": <nombreCategoria>
      },
      "name": <nombreMascota>,
      "tags": [
        {
          "id": 1,
          "name": "Perros de acompañamiento"
        }
      ],
      "status": "available"
    }
    """
    When method post
    Then status <statusCodeResponse>
    And match $.name == "<nombreMascota>"
    And match $.id == <idPet>
    Examples:
      | idPet | nombreCategoria    | nombreMascota | statusCodeResponse |
      | 5564  | Mascotas Amigables | Firulais      | 200                |
      | 5565  | Mascotas Amigables | Lazy          | 200                |
      | 55669 | Mascotas Amigables | Bethoven      | 200                |
      | 5567  | Mascotas Amigables | Marco Polo    | 200                |
      | 5568  | Mascotas Amigables | Bobby         | 200                |

  Scenario Outline: Consultar mascotas
    And path "/pet/<idPet>"
    When method get
    Then status 200
    Examples:
      | idPet |
      | 5564  |
      | 5565  |
      | 55669 |
      | 5567  |
      | 5568  |