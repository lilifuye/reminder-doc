Feature: Como paciente quiero el registro automático de mis compras realizadas en mi historial de gastos médicos para facilitar el control de mis gastos
	Scenario:  Registro automático de datos por compras realizadas en la plataforma
        Given el paciente realiza una compra mediante la plataforma 
        When se realice la compra 
        And saldrá un mensaje = "Mensaje"
        Then el gasto será inmediatamente registrado en el historial de datos
Examples:
|         Mensaje          |
|    “Compra realizada”    |	

	Scenario: Registro automático de datos por citas realizadas en la plataforma
        Given el paciente se registra y paga por una cita médica mediante la plataforma 
        When  el paciente realice el pago 
        And saldrá un mensaje = "Mensaje"
        Then  el gasto será inmediatamente registrado en el historial de datos
Examples:
|         Mensaje          |
|    “Compra realizada”    |

	Scenario: Cancelación de registro automático de datos por citas canceladas
        Given el paciente se registra y paga por una cita médica mediante la plataforma 
        When el paciente no asista a la cita médica 
        Then la cita es cancelada
        And Se cancelará el registro de la cita
        And se devolverá el dinero
        And saldrá un mensaje = "Mensaje"

Examples:
|         Mensaje            |
|    “Dinero reembolsado”    |	