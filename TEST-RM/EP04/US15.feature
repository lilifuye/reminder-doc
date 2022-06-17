Feature: Como paciente quiero registrar mis gastos para administrar mis gastos de salud
	Scenario: Registra gastos realizados en medicina
        Given el paciente se encuentra en la sección registro de gastos
        When el paciente escoge la opción = “Registro de gastos” 
        Then el paciente  ingresa un gasto en el formulario
        And El paciente ingresa el "monto"
        And El paciente ingresa el "tipo de gasto realizado"
        And El paciente ingresa el "lugar donde se realizo el gasto"
Examples:
|   monto 	 |   tipo de gasto realizado   |      lugar donde se realizo el gasto	   |
|   S/.50 	 |          medicina           |             Farmacia Inkafarma	           |
|   S/.100 	 |        cita medica          |              Clinica Delgado   	   |	

	Scenario: Ingresar los gastos médicos pasados 
        Given el paciente se encuentra en la sección de historial de gastos
        When el paciente escoge la opción = “Registro de gastos”
        Then el paciente escoge la opción = “gastos anteriores”
        And El paciente ingresa una "fecha"
        And El paciente ingresa el "monto"
        And El paciente ingresa el "tipo de gasto realizado"        
        And El paciente ingresa el "lugar donde se realizo el gasto"
Examples:
|   Fecha    |   monto 	 |   tipo de gasto realizado   |      lugar donde se realizo el gasto	   |	
|  20/04/22  |   S/.50 	 |          medicina           |             Farmacia Inkafarma	           |
|  05/02/22  |   S/.100  |        cita medica          |              Clinica Delgado   	   |	

	Scenario: Ingresar los gastos médicos ya registrados 
        Given el paciente se encuentra en la sección registro de gastos
        When  el paciente escoge la opción = “Registro de gastos” 
        Then el paciente  ingresa un gasto en el formulario
        And El paciente ingresa el "monto"
        And El paciente ingresa el "tipo de gasto realizado"        
        And El paciente ingresa el "lugar donde se realizo el gasto"
        And el paciente recibirá una "advertencia"
Examples:
|   Fecha    |   monto 	 |   tipo de gasto realizado   |      lugar donde se realizo el gasto	   |                   advertencia        	   |
|  20/04/22  |   S/.50 	 |          medicina           |             Farmacia Inkafarma	           |	 Estos datos ya han sido registrados	   |
|  05/02/22  |   S/.100  |        cita medica          |              Clinica Delgado   	   |	 Estos datos ya han sido registrados	   |		
