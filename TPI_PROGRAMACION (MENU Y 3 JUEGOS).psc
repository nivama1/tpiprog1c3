Algoritmo TPI_PROGRAMACION  
	Repetir
	Limpiar Pantalla
	escribir "Presentamos los juegos didácticos de Play.Inc"
    escribir ""
    escribir ""
    escribir "1) Ahorcado"
    escribir "2) Adivina el número"
    escribir "3) Sumas"
    escribir "Elige una opción del 1 al 3 para jugar a los juegos"
    Escribir "para salir presiona 4"
	leer op
    segun op hacer
        1:
			
            Limpiar Pantalla
			Escribir "bienvenido al ahorcado"
			Escribir "las palabras a adivinar son animales"
			Escribir "buena suerte"
			PALABRAS_TAMANO <- 12;
            oportunidades <- 6;
            Si PALABRAS_TAMANO > 0 Entonces
                Dimension palabras[PALABRAS_TAMANO];
                palabras[1] <- "perro"
                palabras[2] <- "gato"
                palabras[3] <- "conejo"
                palabras[4] <- "tortuga"
                palabras[5] <- "caballo"
                palabras[6] <- "mono"
                palabras[7] <- "giraffa"
                palabras[8] <- "pez"
                palabras[9] <- "leon"
                palabras[10] <- "tigre"
                palabras[11] <- "pajaro"
                palabras[12] <- "ornero"
                
                cabeza <- ' ';
                cuerpo <- ' ';
                mano_izquierda <- ' ';
                mano_derecha <- ' ';
                pie_izquierdo <- ' ';
                pie_derecho <- ' ';
                turnos <- 0;
                aciertos <- 0;
                palabra <- palabras[Azar(PALABRAS_TAMANO)+1];
                n <- Longitud(palabra);
                
                Si n > 0 Entonces
                    Dimension casillas[n];
                    Para i <- 1 Hasta n Con Paso 1 Hacer
                        casillas[i] <- '_';
                    FinPara
                    
                    Repetir
                        Escribir ""
                        Escribir "Oportunidades restantes: ", oportunidades-turnos;
                        Para i <- 1 Hasta n Con Paso 1 Hacer
                            Escribir Sin Saltar " ", casillas[i];
                        FinPara
                        Escribir ""
                        Escribir Sin Saltar "Escriba una letra: ";
                        Leer letra;
                        encontrado <- Falso;
                        Para i <- 1 Hasta n Con Paso 1 Hacer
                            chr <- Subcadena(palabra, i, i);
                            Si Mayusculas(letra) = Mayusculas(chr) Entonces
                                encontrado <- Verdadero;
                                Si casillas[i] = '_' Entonces
                                    casillas[i] <- chr;
                                    aciertos <- aciertos + 1;
                                FinSi
                            FinSi
                        FinPara
                        Si No encontrado Entonces
                            turnos <- turnos + 1;
                            Escribir "Letra no encontrada.";
                            Segun turnos Hacer
                                1: cabeza <- 'O';
                                2: cuerpo <- '+';
                                3: mano_derecha <- '/';
                                4: mano_izquierda <- '\';
                                5: pie_derecho <- '/';
                                6: pie_izquierdo <- '\';
                            FinSegun
                        FinSi
                        Escribir "     ", cabeza, " ";
                        Escribir "    ", mano_derecha, cuerpo, mano_izquierda;
                        Escribir "    ", pie_derecho, " ", pie_izquierdo;
                        Escribir ""
                    Hasta Que turnos >= oportunidades O aciertos >= n;
                    
                    Si aciertos = n Entonces
                        Escribir "Felicidades, has ganado.";
                    Sino
                        Escribir "Has perdido.";
                    FinSi
                    Escribir "La palabra secreta es: ", palabra;
                Sino
                    Escribir "Error: No se pudo seleccionar una palabra válida.";
                FinSi
            Sino
                Escribir "Error: No hay palabras definidas.";
            FinSi
            Escribir "Funcionalidad Adivina el número aún no implementada."
            Escribir "Funcionalidad Sumas aún no implementada."
			Escribir "en 5 segundos vas a volver al menu"
			esperar 5 segundos
		2:
			Limpiar Pantalla
			Escribir "Bienvenido al juego de adivinar el numero"
			Escribir "para ganar en el juego vas a tener que adivinar un numero del 1 al 100"
			Escribir "para que sea mas facil te vamos a ir diciendo si el numero que pusiste es muy bajo o muy alto"
			Definir numero_secreto Como Entero
			Definir intento Como Entero
			Definir intentos Como Entero
			
			numero_secreto <- Azar(100)
			intentos <- 0
			
			Escribir "¡Adivina el número entre 1 y 100!"
			
			Repetir
				Escribir Sin Saltar "Tu intento: "
				Leer intento
				intentos <- intentos + 1
				
				Si intento < numero_secreto Entonces
					Escribir "Demasiado bajo."
				Sino
					Si intento > numero_secreto Entonces
						Escribir "Demasiado alto."
					Sino
						Escribir "¡Correcto! El número era ", numero_secreto, ". Te tomó ", intentos, " intentos."
					FinSi
				FinSi
			Hasta Que intento = numero_secreto
			Escribir "en 5 segundos vas a volver al menu"
			esperar 5 segundos
		3:
			Limpiar Pantalla
			Escribir "bienvenido al juego de las sumas"
			Escribir "te vamos a dar 5 sumas y vas a tener que adivinarlas"
			Escribir "Suerte"
				Definir a, b,respuesta_usuario, respuesta_correcta Como Entero
				
				intentos <- 5
				aciertos <- 0
				
				Escribir "¡Bienvenido al juego de sumas!"
				Escribir "Debes resolver 5 sumas de dos dígitos. ¡Buena suerte!"
				Escribir ""
				
				Para i <- 1 Hasta intentos Hacer
					
					a <- Azar(90) + 10 
					b <- Azar(90) + 10 
					respuesta_correcta <- a + b
						Escribir "¿Cuánto es ", a, " + ", b, "? "
							Leer respuesta_usuario
					Si respuesta_usuario = respuesta_correcta Entonces
						Escribir "¡Correcto!"
						aciertos <- aciertos + 1
					Sino
						Escribir "Incorrecto. La respuesta correcta es: ", respuesta_correcta
					FinSi
					
					Escribir ""
				FinPara
				
				Escribir "¡Juego terminado!"
				Escribir "Has acertado ", aciertos, " de ", intentos, " sumas."
				Escribir "en 5 segundos vas a volver al menu"
				esperar 5 segundos
				FinSegun
		Hasta Que 	op=4
FinAlgoritmo

