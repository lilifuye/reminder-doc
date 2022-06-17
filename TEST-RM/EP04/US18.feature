Feature: Como paciente quiero visualizar mi historial de gastos por fechas mediante gráficos para gestionar mis gastos de salud
	Scenario: Mostrar historial de datos
        Given el paciente se encuentra en la sección de historial de gastos 
        When el paciente escoge la opción = “Ver historial de gastos”
        And saldrá un mensaje = "Mensaje"
        Then el paciente es redirigido al interfaz de reporte de gastos realizados
Examples:
|         Mensaje           |
|    “Historial de datos”   |

	Scenario: Buscar gastos por fechas 
        Given el paciente se encuentra en la sección de historial de gastos 
        When el paciente escoge la opción = “Ver historial de gastos”
        And saldrá un mensaje = "Mensaje"
        Then el paciente es redirigido al interfaz de reporte de gastos realizados
        And El paciente ingresa una "fecha"
        And será notificado con una "Notificación"
        And se le mostrará el gasto de una fecha específica
Examples:
|             Mensaje              |    Fecha       |             Notificación                |
|      “Historial de datos”        |    20/04/22    |    “Historial de datos del 20/04/22”    |


	Scenario: Mostrar el total de gasto por fecha
        Given el paciente se encuentra en la sección de historial de gastos 
        When el paciente escoge la opción = “Ver historial de gastos”
        When el paciente escoge la opción = “calcular gasto mensual”
        And será notificado con una "Notificación"
        And El paciente ingresa un "mes"
        And  se le mostrará el gastos totales realizados en un mes específico

Examples:
|          Notificación            |    mes       |
|      “Elija el mes a calcular”   |    abril     |