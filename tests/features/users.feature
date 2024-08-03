Feature: users controller
  Test all endpoints exposed by the controller.

 Scenario Outline: To probe response route /users 
    When I setup mock with dynamic data whit "<bodyres>"     
    And I send "<method>" request to "<route>" where body is json "<bodyreq>"
    Then the response code should be "<codres>"      
    And the response should match json "<bodyres>"

    Examples: 
    |method|route               |bodyreq                                   |codres         |bodyres                      |
    |GET   |/v1/users           |./files/req/Vacio.json                    |200 OK         |./files/res/IListUsers.json  |
    |POST  |/v1/users           |./files/req/usuario_create.json           |201 Created    |./files/res/Vusuario_create.json|