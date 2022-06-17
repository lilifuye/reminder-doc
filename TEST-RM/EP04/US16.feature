Feature: Como paciente quiero editar mis gastos registrados para corregir datos con errores
	Scenario: Edición de datos de gastos para corregir los errores
        Given el paciente se encuentra en la sección de edición de gastos 
        When el paciente escoge la opción =  “Edición de gastos registrados manualmente”
        Then se mostrará una lista de gastos registrados editables
        And saldrá un mensaje = "Mensaje"
Examples:
|         Mensaje          |
|    “Cambios guardados”   |

	Scenario: Cancelar la edición de datos del formulario 
        Given el paciente se encuentra en la sección de edición de gastos 
        When el paciente escoge la opción =  “Edición de gastos registrados manualmente”
        Then  el paciente escoge la opción = “Cancelar la edición de gastos”
        And Los gastos se mantienen sin cambios
        And saldrá un mensaje = "Mensaje"
Examples:
|         Mensaje          |
|    “Edicion cancelada”   |

	Scenario: Edición de datos del formulario en grupo
        Given el paciente se encuentra en la sección de edición de gastos 
        When el paciente escoge la opción =  “Edición de gastos registrados manualmente”
        Then se mostrará una lista de gastos registrados editables
        And  se seleccionara gastos que se quiere cambiar
        And  se seleccionará también los otros datos a cambiar
        And El paciente ingresa una nueva "fecha"
        And El paciente ingresa el  "lugar donde se realizo el gasto"
Examples:
|   Fecha    |      lugar donde se realizo el gasto	   |
|  20/04/22  |             Farmacia Inkafarma	           |
|  05/02/22  |               Clinica Delgado   	           |