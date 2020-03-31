Proceso sin_titulo
	
	Definir menu, submenu1, submenu2, opcionConteo, opcionSalarioBase, opcionSalud, opcionEdad, opcionPeso Como Logico;
	Definir opcionMenuPrincipal, opcion1, opcion2, decision como Texto;
	Definir num, i, horasTrabajadas, valorHora, salarioBase, salud, edad, kilogramos, altura, peso como Numerico;
	
	
	menu = Verdadero;
	
	Mientras menu = Verdadero Hacer
		
	Limpiar Pantalla;
	
	Escribir "Menú Principal";
	Escribir "";
	Escribir "A. Leer números consecutivos pares";
	Escribir "B. Empleado";
	Escribir "C. Personas";
	Escribir "D. Salir";
	Leer opcionMenuPrincipal;
	
	opcionMenuPrincipal = Mayusculas(opcionMenuPrincipal);
	
	Segun opcionMenuPrincipal Hacer
		
		"A": //Opción para leer los consecutivos pares
			
			opcionConteo = Verdadero;
			
			Mientras opcionConteo = Verdadero Hacer
				
			Limpiar Pantalla;
				
			Escribir "Ingresa un número para saber el límite del conteo en número pares";
			Leer num;
			
			Si num mod 2 = 0 Entonces
				
				Para i=2 hasta num con paso 2 Hacer
					Escribir i;
				FinPara
				
				Sino
					
					Escribir "No es posible realizar dicho conteo.";
					
				FinSi
				
				Escribir "";
				Escribir "";
				Escribir "Qué desea realizar:";
				Escribir "";
				Escribir "1. Repetir ejercicio";
				Escribir "2. Ir al menú principal.";
				Escribir "3. Salir";
				Leer decision;
				
				Segun decision hacer
					
					"1": //Opción de Repetir ejercicio
						opcionConteo = Verdadero;
						
					"2": //Opción de Ir al menú principal
						opcionConteo = Falso;
						menu = Verdadero;
						
					"3": //Opción de Salir
						opcionConteo = Falso;
						menu = Falso;
						
					De Otro Modo:
						Limpiar Pantalla;
						Escribir "Opción incorrecta";
						opcionConteo = Falso;
						menu = Falso;
						Esperar 5 Segundos;
					
					
				FinSegun
				
			FinMientras
				
		"B": //Opción para leer el submenú Empleado
			
			submenu1 = Verdadero;
			
			Mientras submenu1 = Verdadero Hacer
				
			Limpiar Pantalla;
			
			Escribir "Has ingresado al submenú EMPLEADO";
			Escribir "";
			Escribir "1. Salario empleado";
			Escribir "2. Pago de salud";
			Escribir "3. Salir";
			Leer opcion1;
			
			Segun opcion1 Hacer
				
				"1": //Opción de submenú de Salario empleado
					
					opcionSalarioBase = Verdadero;
					
					Mientras opcionSalarioBase = Verdadero Hacer
						
						Limpiar Pantalla;
						
						Escribir "Calcular salario empleado.";
						Escribir "";
					
					Escribir "Ingrese la cantidad de horas trabajadas";
					Leer horasTrabajadas;
					
					Escribir "Ingresa el valor de cada hora de trabajo";
					Leer valorHora;
					
					salarioBase = horasTrabajadas * valorHora;
					
					Escribir "El salario base a pagar es ", salarioBase;
					
					Escribir "";
					Escribir "";
					Escribir "Qué desea realizar:";
					Escribir "";
					Escribir "1. Repetir ejercicio";
					Escribir "2. Volver al submenú";
					Escribir "3. Ir al menú principal.";
					Escribir "4. Salir";
					Leer decision;
					
					Segun decision hacer
						
						"1": //Opción de Repetir ejercicio
							
							opcionSalarioBase = Verdadero;
							
						"2": //Opción de Volver al submenú
							
							opcionSalarioBase = Falso;
							submenu1 = Verdadero;
							
						"3": //Opción de Ir al menú principal
							
							opcionSalarioBase = Falso;
							submenu1 = Falso;
							menu = Verdadero;
							
						"4": //Opción de Salir
							
							opcionSalarioBase = Falso;
							submenu1 = Falso;
							menu = Falso;
							
							
						De Otro Modo:
							Limpiar Pantalla;
							Escribir "Opción incorrecta";
							opcionSalarioBase = Falso;
							submenu1 = Falso;
							menu = Falso;
							Esperar 5 Segundos;
							
							
					FinSegun
					
				FinMientras
					
				"2": //Opción de Submenú de Pago de salud
					
					opcionSalud = Verdadero;
					
					Mientras opcionSalud = Verdadero Hacer
						
					Limpiar Pantalla;	
					
					
					Escribir "Pago de Salud de Empleado";
					Escribir "";
					Escribir "Ingresa el salario base del empleado";
					Leer salarioBase;
					
					Si salarioBase >= 1200000 Entonces
						
						salud = salarioBase * 0.04;
						
					Sino
						
						salud = salarioBase * 0.01;
						
					FinSi
					
					Escribir "El descuento de salud es ", salud;
					
					
					Escribir "";
					Escribir "";
					Escribir "Qué desea realizar:";
					Escribir "";
					Escribir "1. Repetir ejercicio";
					Escribir "2. Volver al submenú";
					Escribir "3. Ir al menú principal.";
					Escribir "4. Salir";
					Leer decision;
					
					Segun decision hacer
						
						"1": //Opción Repetir ejercicio
							
							opcionSalud = Verdadero;
							
						"2": //Opción de Volver al submenú
							
							opcionSalud = Falso;
							submenu1 = Verdadero;
							
						"3": //Opción de Ir al menú principal
							
							opcionSalud = Falso;
							submenu1 = Falso;
							menu = Verdadero;
							
						"4": //Opción de Salir
							
							opcionSalud = Falso;
							submenu1 = Falso;
							menu = Falso;
							
							
						De Otro Modo:
							Limpiar Pantalla;
							Escribir "Opción incorrecta";
							opcionSalud = Falso;
							submenu1 = Falso;
							menu = Falso;
							Esperar 5 Segundos;
							
							
					FinSegun
					
				FinMientras
					
				"3":  //Opción Submenú Salir
					submenu1 = Falso;
					menu = Falso;
					
				De Otro Modo:
					Limpiar Pantalla;
					Escribir "Opción incorrecta";
					submenu1 = Falso;
					menu = Falso;
					Esperar 5 Segundos;
				
				
			FinSegun
			
		FinMientras
		
		
		"C": //Opción para leer el submenú Personas
			
			submenu2 = Verdadero;
			
			Mientras submenu2 = Verdadero Hacer
				
			Limpiar Pantalla;
			
			Escribir "Has ingresado al submenú PERSONAS";
			Escribir "";
			Escribir "A. Saber si la persona es mayor de edad";
			Escribir "B. Calcula el índice de masa muscular";
			Escribir "C. Volver al menú principal";
			Escribir "D. Salir";
			Leer opcion2;
			
			opcion2 = Mayusculas(opcion2);
			
			Segun opcion2 Hacer
				
				"A":  //Opción del submenú Saber si la persona es mayor de edad
					
					opcionEdad = Verdadero;
					
					Mientras opcionEdad = Verdadero Hacer
						
					Limpiar Pantalla;
					
					Escribir "Saber si la persona es mayor de edad";
					Escribir "";
					Escribir "Ingresa tu edad actual";
					Leer edad;
					
					Si edad >= 18 Entonces
						
						Escribir "La persona es mayor de edad";
						
					Sino
						
						Escribir "La persona es menor de edad";
						
					FinSi
					
					Escribir "";
					Escribir "";
					Escribir "Qué desea realizar:";
					Escribir "";
					Escribir "1. Repetir ejercicio";
					Escribir "2. Volver al submenú";
					Escribir "3. Ir al menú principal.";
					Escribir "4. Salir";
					Leer decision;
					
					Segun decision hacer
						
						"1": //Opción Repetir ejercicio
							
							opcionEdad = Verdadero;
							
						"2": //Opción de Volver al submenú
							
							opcionEdad = Falso;
							submenu2 = Verdadero;
							
						"3": //Opción de Ir al menú principal
							
							opcionEdad = Falso;
							submenu2 = Falso;
							menu = Verdadero;
							
						"4": //Opción de Salir
							
							opcionEdad = Falso;
							submenu2 = Falso;
							menu = Falso;
							
							
						De Otro Modo:
							Limpiar Pantalla;
							Escribir "Opción incorrecta";
							opcionEdad = Falso;
							submenu2 = Falso;
							menu = Falso;
							Esperar 5 Segundos;
							
							
					FinSegun
					
				FinMientras
				
				
				"B": //Opción submenú de Calcula el índice de masa muscular
					
					opcionPeso = Verdadero;
					
					Mientras opcionPeso = Verdadero Hacer
						
					Limpiar Pantalla;
					
					Escribir "Calcula el índice de masa muscular";
					Escribir "";
					Escribir "Ingresa el peso en Kilogramos";
					Leer kilogramos;
					
					Escribir "Ingresa la estatura en centímetros";
					Leer altura;
					
					peso = kilogramos / ( (altura*altura) / 10000 );
					
					Escribir "";
					Escribir "Índice de Masa Muscular es ", peso;
					Escribir "";
					
					
					Si peso < 18.5 Entonces
						
						Escribir "Peso inferior al normal";
						
					Sino
						
						Si peso >= 18.5 Y peso <= 24.9 Entonces
							
							Escribir "Su peso es normal";
							
						SiNo
							
							Si peso >= 25.0 Y peso <= 29.9 Entonces
								
								Escribir "Peso superior al normal";
								
							SiNo
								
								Si peso >= 30.0 Entonces
									
									Escribir "Cuídate, estas con problemas de obecidad";
									
								FinSi
								
							FinSi
							
						FinSi
						
					FinSi
					
					
					Escribir "";
					Escribir "";
					Escribir "Qué desea realizar:";
					Escribir "";
					Escribir "1. Repetir ejercicio";
					Escribir "2. Volver al submenú";
					Escribir "3. Ir al menú principal.";
					Escribir "4. Salir";
					Leer decision;
					
					Segun decision hacer
						
						"1": //Opción Repetir ejercicio
							
							opcionPeso = Verdadero;
							
						"2": //Opción de Volver al submenú
							
							opcionPeso = Falso;
							submenu2 = Verdadero;
							
						"3": //Opción de Ir al menú principal
							
							opcionPeso = Falso;
							submenu2 = Falso;
							menu = Verdadero;
							
						"4": //Opción de Salir
							
							opcionPeso = Falso;
							submenu2 = Falso;
							menu = Falso;
							
							
							
						De Otro Modo:
							Limpiar Pantalla;
							Escribir "Opción incorrecta";
							opcionEdad = Falso;
							submenu2 = Falso;
							menu = Falso;
							Esperar 5 Segundos;
							
							
					FinSegun
					
				FinMientras
					
			"C": //opción submenú Volver al menú principal
				
				submenu2 = Falso;
				menu = Verdadero;
				
				
			"D": //Opción submenú Salir
				
				submenu2 = Falso;
				menu = Falso;
				
					
				De Otro Modo:
					
					Limpiar Pantalla;
					Escribir "Opción incorrecta";
					submenu2 = Falso;
					menu = Falso;
					Esperar 5 Segundos;
					
				
			FinSegun
			
		FinMientras
		
	"D": //Opción para salir desde el menú principal
		
		Limpiar Pantalla;
		menu = Falso;
		Escribir "Gracias por usar éste Software";
		Esperar 5 Segundos;
		
	De Otro Modo:
		
		Limpiar Pantalla;
		Escribir "Opción incorrecta";
		menu = Falso;
		Esperar 5 Segundos;
		
		
	FinSegun
	
FinMientras

	
FinProceso
