Feature: users controller
  Test all endpoints exposed by the controller.

 Scenario Outline: To probe response route /users 
    When I send "<method>" request to "<route>" where body is json "<bodyreq>"
    Then the response code should be "<codres>"      
    And the response should match json "<bodyres>"

    Examples: 
    |method|route               |bodyreq                                   |codres         |bodyres                      |
    |POST|/v1/users|./files/req/usuario_create.json|201 Created|./files/res/Vusuario_create.json|