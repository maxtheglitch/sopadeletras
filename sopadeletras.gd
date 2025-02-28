extends Node2D

var letras : Array[String] = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "Ñ", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
var palabras : Array[String] = ["BUENO", "DIBUJO", "CULTO", "BUENO", "ABRAZO", "ALBUM", "CULPA", "DELGADO", "CULPA", "CEBOLLA", "DECIR", "ARBOL", "BARATO", "BLANCO", "CLIMA", "DEBER", "ARBOL", "BANCO", "COMER", "CORRER", "CAMBIO", "CIUDAD", "CARGAR", "CAUSA", "ABEJA", "COCHE", "BELLO", "ALBUM", "BELLO", "BESO", "CASO", "CABALLO", "CULPA", "ALA", "ARTE", "CASO", "AMOR", "COMIDA", "COMUN", "ASOMAR", "AJENO", "COMUN", "CAMBIO", "CARNE", "CUERPO", "AJENO", "AJENO", "CARNE", "BASE", "CABEZA", "CORTAR", "BELLO", "CENTAVO", "DEBER", "BARCO", "DECIR", "DEBIL", "ANGEL", "CASO", "BRISA", "ALA", "CASCO", "ARBOL", "COLINA", "ARBOL", "DELGADO", "DECIR", "ABRAZO", "BRUJA", "CALMAR", "ANIMAL", "CABALLO", "DELANTE", "CENTAVO", "AMIGO", "CARNE", "CENA", "DENTRO", "CULTO", "CASCO", "CASCO", "DESTINO", "BROMA", "CLARO", "BASICO", "CUERPO", "DEBER", "ARENA", "BARBA", "ANGEL", "DIBUJO", "BREVE", "DERECHO", "AMOR", "BLOQUE", "DEBER", "ALEJAR", "CULPA", "BARCO", "CENTAVO", "COMER", "CUERPO", "ABEJA", "BRAZO", "BASE", "ARTE", "CUENTA", "AZUL", "ALTO", "CALMAR", "CARNE", "ALGO", "CALOR", "AIRE", "CONOCER", "ABEJA", "BASICO", "ABRIR", "ANDAR", "BUENO", "CORRER", "ABAJO", "BOCA", "DERECHO", "DELANTE", "CENTAVO", "BODA", "BELLO", "BELLO", "CRANEO", "CALMAR", "CLARO", "ARENA", "ALA", "DICTAR", "CORTAR", "ABEJA", "CASTILLO", "ASADO", "ALCOHOL", "AMABLE", "COLINA", "ASOMBRO", "CONOCER", "DELGADO", "CULTO", "COMUN", "BANCO", "CIUDAD", "CORTAR", "BARATO", "CAPAZ", "AJENO", "CONTAR", "ABEJA", "ANDAR", "CAMINAR", "CANTAR", "CARTA", "ABRIR", "CARGAR", "BASICO", "CURVA", "CURVA", "CLIMA", "CARNE", "CASO", "DEBER", "ABEJA", "BASICO", "BARATO", "BARBA", "ACEITE", "BRAZO", "DETRAS", "CAPAZ", "CARA", "BLOQUE", "BELLO", "CRANEO", "BARCO", "CALOR", "ARBOL", "BUQUE", "CASA", "CORRER", "COLINA", "BRUJA", "BOCA", "CARNE", "CORTAR", "COMIDA", "CORTAR", "CENA", "AHORA", "ALCOHOL", "BESO", "DENTRO", "CRUZ", "ALA", "CALMAR", "AIRE", "CABALLO", "DEBER", "DELANTE", "AMIGO", "CINCO", "ANGEL", "CORRER", "BASE", "CUIDAR", "DICTAR", "BUSCAR", "DEMANDA", "CARTA", "CUIDAR", "CIERTO", "AMOR", "CARGAR", "ASADO", "DEBER", "BARBA", "CALOR", "CAJA", "COMER", "CAMA", "CUERPO", "CENA", "ANO", "DEBIL", "DECIR", "CALMAR", "CAJA", "BESO", "DERECHO", "CONOCER", "BARBA", "CULTO", "BOSQUE", "CAMA", "CIELO", "CALMAR", "BARCO", "BLANCO", "CALMAR", "BLOQUE", "ABRAZO", "CLIMA", "CRANEO", "ARENA", "BELLO", "DEBER", "BUSCAR", "ABEJA", "CENTAVO", "ARTE", "ALCOHOL", "DEBER", "CORTAR", "CAPAZ", "ALTO", "CENTAVO", "CEBOLLA", "AMOR", "CULPA", "DECIR", "CASA", "AMOR", "CINCO", "BROMA", "CUENTA", "DEJAR", "DICTAR", "CENTAVO", "CULPA", "CANTAR", "CUENTA", "DIBUJO", "COCHE", "DEMANDA", "BODA", "BLOQUE", "BREVE", "CAMPO", "APARATO", "CLIMA", "COMIDA", "AZUL", "BARBA", "BOCA", "ANIMAL", "ACEITE", "CENTAVO", "CUENTA", "CARTA", "BRUJA", "BUSCAR", "COLINA", "ALMA", "ANDAR", "DICTAR", "CAMA", "BASE", "DENTRO", "ANCHO", "COMER", "COLINA", "ABRIR", "ALARMA", "CENTAVO", "DELANTE", "ALTO", "BESO", "CASCO", "AHORA", "ALTO", "AIRE", "COLINA", "ALTO", "BLANCO", "CIUDAD", "BALA", "CUERPO", "CIERTO", "DELANTE", "COLINA", "ASOMBRO", "CAMINAR", "ABAJO", "BUQUE", "AJENO", "BRISA", "CUENTA", "DELGADO", "CONOCER", "ACEITE", "BANCO", "ARTE", "BARATO", "DEBIL", "ALBUM", "AZUL", "DELGADO", "DEBIL", "CABALLO", "COMUN", "BASE", "BODA", "ALBUM", "CEBOLLA", "BESO", "DELGADO", "ALTO", "COLINA", "CAUSA", "COLINA", "CLAVO", "BRAZO", "ANGEL", "CASA", "DEJAR", "COMUN", "CINCO", "ANGEL", "CARA", "BASICO", "AHORA", "ANO", "AHORA", "CAFE", "CONOCER", "CONTAR", "BRISA", "ABRIR", "AIRE", "DEBIL", "ABEJA", "CINCO", "ACEITE", "BOCA", "BLANCO", "DECIR", "CLAVO", "ALGO", "CORTAR", "CLIMA", "CALOR", "BUSCAR", "CAJA", "CALMAR", "ASOMAR", "ABRIR", "DESTINO", "COCHE", "BLOQUE", "ABAJO", "ANIMAL", "CAPITAL", "CAUSA", "BODA", "CAFE", "COSA", "ABRIR", "DEMANDA", "BLANCO", "BUQUE", "AMIGO", "AIRE", "AZUL", "BODA", "AMOR", "CINCO", "BROMA", "BELLO", "CIUDAD", "DERECHO", "ALCOHOL", "ARTE", "CULTO", "CULTO", "CABALLO", "ALTO", "DELANTE", "DIBUJO", "ALARMA", "BUENO", "CLARO", "BARATO", "COSA", "ALA", "DESTINO", "BASE", "CAMA", "CARGAR", "CUERPO", "CURVA", "ABAJO", "BUQUE", "AIRE", "CAMBIO", "DESTINO", "DIBUJO", "AMIGO", "ALBUM", "BUSCAR", "DETRAS", "CIUDAD", "BARBA", "BANCO", "CAJA", "ANGEL", "DELGADO", "AIRE", "ABEJA", "ASOMBRO", "BODA", "CORTAR", "CEBOLLA", "CAJA", "COSA", "BALA", "DETRAS", "CASA", "ALARMA", "BUENO", "ASADO", "CLAVO", "CABEZA", "BLOQUE", "BARCO", "BRUJA", "BELLO", "DEDO", "DIENTE", "DOLOR", "DONDE", "DORMIR", "DOSEL", "DRAMA", "DUCHA", "DULCE", "DURO", "EDAD", "EDIFICIO", "EFECTO", "EJEMPLO", "EJERCITO", "ELASTICO", "ELEVAR", "ELLA", "EMBARGO", "EMOCION", "EMPRESA", "ENANO", "ENCIMA", "ENERGIA", "ENIGMA", "ENORME", "ENSAYO", "ENTERA", "ENTRAR", "ENVASE", "ENVIDIA", "EPOCA", "EQUIPO", "ERROR", "ESCALAR", "ESCENA", "ESCRIBIR", "ESENCIA", "ESFERA", "ESFUERZO", "ESPACIO", "ESPALDA", "ESPEJO", "ESPOSA", "ESQUINA", "ESTADO", "ESTILO", "ESTIMAR", "ESTIRAR", "ESTRADA", "ESTRELLA", "ESTUDIO", "ETAPA", "ETERNO", "EVITAR", "EXACTO", "EXAMEN", "EXCESO", "EXIGIR", "EXITO", "EXPERTO", "EXPLICAR", "EXPRESAR", "EXTENDER", "EXTREMO", "FABRICA", "FACIL", "FACTOR", "FAJA", "FALDA", "FAMA", "FAMILIA", "FAMOSO", "FANATICO", "FARO", "FASE", "FAVOR", "FECHA", "FELIZ", "FEO", "FERIA", "FEROZ", "FIESTA", "FIGURA", "FIJAR", "FILA", "FILTRO", "FINAL", "FIRME", "FISICA", "FLOR", "FLOTA", "FLUIDO", "FOCO", "FONDO", "FORMA", "FORZAR", "FOTO", "FRASE", "FRENTE", "FRESCO", "FRUTA", "FUEGO", "FUENTE", "FUERZA", "FUGA", "FUMAR", "FUNDA", "FURIA", "FUSION", "FUTURO", "GALA", "GALERIA", "GALLO", "GANA", "GANAR", "GARAJE", "GARGANTA", "GASTO", "GATO", "GEMELO", "GENERAL", "GENERAR", "GENTE", "GESTO", "GIGANTE", "GIRAR", "GOLPE", "GORRA", "GRACIA", "GRADO", "GRANJA", "GRASA", "GRATIS", "GRAVE", "GRITAR", "GRUPO", "GUANTE", "GUERRA", "GUIA", "GUSTO", "HABER", "HABITO", "HABLAR", "HACER", "HADA", "HALLAR", "HAMBRE", "HARINA", "HASTA", "HAZANA", "HECHO", "HELADO", "HERIDA", "HERMANO", "HEROE", "HIELO", "HIERBA", "HIJA", "HIJO", "HILO", "HOJA", "HOMBRE", "HOMBRO", "HONOR", "HORA", "HORMIGA", "HOTEL", "HOY", "HUELLA", "HUIR", "HUMANO", "HUMEDO", "HUMO", "HUNDIR", "IDEAL", "IDIOMA", "IDOLO", "IGLESIA", "IGUAL", "IMAGEN", "IMPACTO", "IMPONER", "IMPRESO", "IMPULSO", "INCAPAZ", "INCENDIO", "INDICAR", "INDICE", "INFANCIA", "INFORME", "INGENIO", "INICIO", "INMENSO", "INMUNE", "INSECTO", "INSISTIR", "INSTANTE", "INTACTO", "INTENSO", "INTERES", "INTERIOR", "INTIMO", "INUTIL", "INVALIDO", "INVERSO", "INVIERNO", "IRA", "IRREAL", "ISLA", "JABALI", "JABON", "JAMON", "JAULA", "JEFE", "JOVEN", "JUEGO", "JUEZ", "JUGO", "JUGUETE", "JUNTAR", "JUSTO", "JUZGAR", "KIOSCO", "KOALA", "LABIO", "LABOR", "LADO", "LAGARTO", "LAGRIMA", "LANA", "LANCHA", "LARGO", "LASTIMA", "LATIDO", "LAVAR", "LAZO", "LEAL", "LECHE", "LEER", "LEGION", "LEJANO", "LENGUA", "LENTO", "LEON", "LESION", "LETRA", "LEYENDA", "LIBERAR", "LIBRE", "LIBRO", "LICOR", "LIDER", "LIMITE", "LIMON", "LIMPIO", "LINDO", "LINEA", "LIQUIDO", "LISTA", "LISTO", "LITERA", "LLAMAR", "LLANO", "LLEGAR", "LLENAR", "LLORAR", "LLOVER", "LOBO", "LOCAL", "LOCO", "LOGRAR", "LOMBRIZ", "LONA", "LUGAR", "LUJO", "LUNA", "LUZ", "MADERA", "MADRE", "MADRINA", "MAGO", "MAIZ", "MALDAD", "MALLA", "MALO", "MAMA", "MAMBO", "MANDA", "MANEJAR", "MANGA", "MANIJA", "MANO", "MANSO", "MANTA", "MAPA", "MAQUINA", "MARCA", "MAREA", "MARFIL", "MARGEN", "MARIDO", "MARINO", "MARTES", "MARZO", "MASA", "MASCARA", "MATAR", "MATERIA", "MATIZ", "MAXIMO", "MAYOR", "MAZO", "MEDIA", "MEDICO", "MEDIDA", "MEDIO", "MIEDO", "MIEL", "MIEMBRO", "MENTE", "MENTIR", "MERCADO", "MERITO", "MESA", "METAL", "METRO", "MIEDO", "MIEL", "MILAGRO", "MILITAR", "MIMAR", "MINIMO", "MINUTO", "MIRA", "MISION", "MISMO", "MITAD", "MODELO", "MODERNO", "MODO", "MOJAR", "MOLDE", "MOLER", "MOMENTO", "MONEDA", "MONJA", "MONO", "MONTAR", "MONTE", "MORIR", "MORRO", "MOSTRAR", "MOTIVO", "MOVER", "MUCHO", "MUDAR", "MUELA", "MUERTE", "MUJER", "MULA", "MURAL", "MUSICA", "MUSLO", "MUTUO", "NACER", "NACION", "NADA", "NADAR", "NARIZ", "NATAL", "NATIVO", "NATURAL", "NAVE", "NEBLINA", "NEGAR", "NEGOCIO", "NEGRO", "NERVIO", "NETO", "NEUTRO", "NIDO", "NIETO", "NIVEL", "NOBLE", "NOCHE", "NOMBRAR", "NORMA", "NORTE", "NOTA", "NOTICIA", "NOVELA", "NOVIA", "NUBE", "NUCA", "NUDO", "NUEVA", "NUMERO", "OASIS", "OBEDECER", "OBJETO", "OBLIGA", "OBRA", "OBRAR", "OBTENER", "OBVIO", "OCASO", "OCULTO", "OCUPAR", "ODIAR", "OESTE", "OFENSA", "OFERTA", "OFICIO", "OFRECER", "OIDO", "OLA", "OLIVA", "OLVIDO", "OMBLIGO", "ONDA", "ONZA", "OPACO", "OPINAR", "OPONER", "OPUESTO", "ORACION", "ORDEN", "OREJA", "ORIGEN", "ORILLA", "ORO", "OSADO", "OSO", "OTORGAR", "OTRO", "OVEJA", "OVILLO", "OXIGENO", "OZONO", "PACTO", "PADRE", "PAGA", "PAGINA", "PAIS", "PAJA", "PAJARO", "PALABRA", "PALCO", "PALETA", "PALMA", "PANAL", "PANICO", "PANZA", "PAÑAL", "PAPEL", "PAQUETE", "PARADA", "PARED", "PAREJA", "PARIR", "PARQUE", "PARRA", "PARTE", "PASAR", "PASEO", "PASILLO", "PASO", "PASTA", "PATA", "PATIO", "PATRON", "PAUTA", "PAVO", "PAZ", "PECADO", "PECHO", "PEDAL", "PEDIR", "PEGAR", "PEINAR", "PELEA", "PELICULA", "PELIGRO", "PELLEJO", "PELO", "PELOTA", "PENA", "PENAL", "PENSAR", "PEOR", "PEPINO", "PEQUEÑO", "PERA", "PERCHA", "PERDER", "PERDON", "PEREZA", "PERFIL", "PERIODO", "PERLA", "PERMISO", "PERRO", "PERSONA", "PESAR", "PESCA", "PESO", "PESTAÑA", "PETALO", "PETROLEO", "PEZ", "PIEZA", "PILAR", "PILDORA", "PILOTO", "PINAR", "PINZA", "PIÑA", "PISTA", "PLACA", "PLAN", "PLANCHA", "PLANTA", "PLATA", "PLATO", "PLAYA", "PLAZO", "PLOMO", "PLUMA", "POBRE", "POCO", "PODER", "POEMA", "POLEN", "POLICIA", "POLLO", "POLVO", "PONER", "PORTAL", "POSADA", "POSIBLE", "POSTAL", "POSTE", "POTENCIA", "POZO", "PRADO", "PRECIO", "PREGUNTA", "PREMIO", "PRENSA", "PREPARAR", "PRESION", "PRESTAR", "PREVIO", "PRIMO", "PRISA", "PRIVADO", "PROBAR", "PROCESO", "PRODUCTO", "PROFUNDO", "PROGRAMA", "PROMESA", "PRONTO", "PROPIO", "PROSA", "PROTEGER", "PRUEBA", "PUBLICO", "PUEBLO", "PUERTA", "PUESTO", "PULGA", "PULMON", "PULSO", "PUMA", "PUNTA", "PUNTO", "PUÑAL", "PURO", "QUEDAR", "QUEJA", "QUEMAR", "QUERER", "QUESO", "QUITAR", "RABIA", "RABO", "RACIMO", "RADAR", "RAIZ", "RAMA", "RAMPA", "RANCHO", "RANGO", "RAPIDO", "RAPTO", "RASCAR", "RASGO", "RATA", "RAYO", "RAZA", "RAZON", "REAL", "REBAÑO", "REBELDE", "RECETA", "RECIBIR", "RECLAMAR", "RECORDAR", "RECREO", "RECTO", "RED", "REDONDO", "REDUCIR", "REFLEJO", "REFORMA", "REFUGIO", "REGALAR", "REGLA", "REGRESO", "REGULAR", "REINA", "REIR", "REJA", "RELEVAR", "RELOJ", "REMATE", "REMEDIO", "REMO", "RENCOR", "RENTA", "REPARTIR", "REPENTE", "REPETIR", "REPOSO", "RES", "RESCATE", "RESERVA", "RESIDIR", "RESINA", "RESPETO", "RESTO", "RESUMEN", "RETAR", "RETINA", "RETIRO", "RETO", "REUNION", "REVELAR", "REVERSO", "REVISTA", "REY", "REZAR", "RICO", "RIENDA", "RIESGO", "RIGIDO", "RINCON", "RIO", "RIQUEZA", "RISA", "RITMO", "ROBAR", "ROCA", "RODAR", "RODEO", "RODILLA", "ROGAR", "ROJO", "ROMPER", "RONCAR", "ROPA", "ROSA", "ROSTRO", "ROTURA", "RUBI", "RUDO", "RUEDA", "RUIDO", "RUTA", "SABER", "SABIO", "SABOR", "SACAR", "SAGAZ", "SAL", "SALIDA", "SALON", "SALTO", "SALUD", "SALVAR", "SAMBA", "SANA", "SANCION", "SANDIA", "SANO", "SARTEN", "SASTRE", "SAUCE", "SAVIA", "SECAR", "SECRETO", "SECTOR", "SED", "SEGUIR", "SEGURO", "SEGUN", "SELLAR", "SELVA", "SEMANA", "SEMILLA", "SENDA", "SEÑAL", "SEÑOR", "SEPARAR", "SERENO", "SERIE", "SERVIR", "SESION", "SETA", "SEXO", "SIDRA", "SIEMPRE", "SIERRA", "SILENCIO", "SILLA", "SIMBOLO", "SIMPLE", "SINFONIA", "SINGULAR", "SITIO", "SOBRA", "SOBRE", "SOCIAL", "SOCIO", "SOFIA", "SOLAR", "SOLDADO", "SOLEDAD", "SOLER", "SOLIDO", "SOLTAR", "SOMBRA", "SONIDO", "SONREIR", "SOPA", "SOPLAR", "SOPORTE", "SORDO", "SORPRESA", "SORTEO", "SOSA", "SOTANO", "SUAVE", "SUBIR", "SUCESO", "SUDOR", "SUEGRA", "SUELO", "SUEÑO", "SUERTE", "SUFRIR", "SUMAR", "SUPERAR", "SUPLIR", "TABLA", "TACON", "TACTO", "TAJO", "TALAR", "TALON", "TAMBOR", "TANDA", "TANQUE", "TAPA", "TARDE", "TAREA", "TARIFA", "TARJETA", "TARTA", "TASA", "TATUAJE", "TAXI", "TAZA", "TEATRO", "TECHO", "TECLA", "TEJA", "TEJIDO", "TELA", "TELEFONO", "TEMA", "TEMOR", "TEMPLO", "TENAZ", "TENDER", "TENEDOR", "TENER", "TENIS", "TENSION", "TEORIA", "TERAPIA", "TERCERO", "TERRENO", "TERROR", "TESORO", "TESTIGO", "TEXTO", "TIBIO", "TIEMPO", "TIENDA", "TIERRA", "TIGRE", "TIMBRE", "TINTA", "TIO", "TIPO", "TIRA", "TIRAR", "TIRO", "TITAN", "TITULO", "TIZA", "TOCADO", "TOCAR", "TODAVIA", "TODO", "TOLERAR", "TOMAR", "TONO", "TONTO", "TOPE", "TOQUE", "TORMENTA", "TORNEO", "TORRE", "TORTUGA", "TOS", "TOTAL", "TRAMA", "TRAMPA", "TRANCE", "TRATO", "TRAUMA", "TRAZO", "TREBOL", "TREN", "TRES", "TRIBU", "TRIGO", "TRINO", "TRIPLE", "TRISTE", "TRIUNFO", "TROFEO", "TROMPA", "TRONCO", "TROPA", "TROZO", "TRUCO", "TRUENO", "TUBO", "TUMOR", "TUNEL", "TURBA", "TURNO", "TUTOR", "UBRE", "ULTIMO", "UMBRAL", "UNIR", "UNIDAD", "UNIVERSO", "UNTAR", "UÑA", "URDIR", "URGENTE", "URNA", "USAR", "USUARIO", "UTIL", "UVAS", "VACA", "VACIO", "VAGAR", "VAINA", "VALER", "VALIDO", "VALLE", "VALOR", "VAPOR", "VARA", "VARIAR", "VARON", "VASO", "VECINO", "VEDA", "VEJEZ", "VELA", "VELAR", "VELOZ", "VENDA", "VENDER", "VENENO", "VENIR", "VENTA", "VENTANA", "VERANO", "VERBO", "VERDAD", "VERDE", "VEREDA", "VERJA", "VERSO", "VERTEBRA", "VERTICE", "VERTER", "VESTIDO", "VETO", "VEZ", "VIAJE", "VIBRAR", "VICIO"]
var diez_palabras : Array[String] = []
var cien_letras : Array[String] = []
var grillas_x_col : Array[int] = [0,65,130,195,260,325,390,455,520,585]
var grillas_y_fila : Array[int] = [0,65,130,195,260,325,390,455,520,585]
var letras_de_palabras_en_grilla = []
var grilla_espacios = []
var is_in_grill = false
var primeraLe_grilla_x= 0
var primeraLe_grilla_y= 0
var cnt3=0
var palabra_dic = {}
var posxdeletrasdepalabras = []
var posydeletrasdepalabras = []
@onready var cnt_grids = 1
@onready var fila=-1
@onready var columna=-1
@onready var cnt=0
@onready var gridletter : PackedScene = preload("res://letra_random.tscn")
@onready var cnt2=0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:

	for i in grillas_x_col:
		for e in grillas_y_fila:
			letras_de_palabras_en_grilla.append(0)
			grilla_espacios.append([i,e])
	
	cnt=0
	while cnt < 10:
		diez_palabras.append(palabras.pick_random())
		
		cnt+=1
		if cnt>9:
			#imprimir_diez_palabras()
			pass
	cnt=0
	while cnt < 100:
		cien_letras.append(letras.pick_random())
		
		cnt+=1
		'''
		if cnt>99:
			imprimir_cien_letras()
			pass
		'''
	cnt=0
	
	for i in cien_letras:
		var new_letter_grid = gridletter.instantiate()
		add_child(new_letter_grid)
		new_letter_grid.name="letra"+str(cnt)
		#print(new_letter_grid.name)
		new_letter_grid.textlabel.text=i
		if new_letter_grid.textlabel.text=="J":
			new_letter_grid.textlabel.position.x+=15
			new_letter_grid.textlabel.position.y+=-5
		if new_letter_grid.textlabel.text=="I":
			new_letter_grid.textlabel.position.x+=12
		if new_letter_grid.textlabel.text=="Ñ":
			new_letter_grid.textlabel.position.y+=4
			new_letter_grid.textlabel.position.x+=2
			pass
#		print(new_letter_grid.textlabel.text)
		new_letter_grid.global_position.x=cnt*65
		if int(new_letter_grid.global_position.x)%int(650)==0:
			fila+=1
		if int(new_letter_grid.global_position.x)%int(65)==0:
			columna+=1
#		print(fila," ", columna)
		if columna==10:
			columna=0
		new_letter_grid.global_position.x=65*columna
		new_letter_grid.global_position.y=65*fila
		#print("x= ",new_letter_grid.global_position.x,", y=  ", new_letter_grid.global_position.y)
		cnt+=1
	cnt=0
	
	for i in diez_palabras:
		
		
		if len(i)==4:
			print (i)
			ub_letra_de_grillas()
			direccion_palabra(primeraLe_grilla_x,primeraLe_grilla_y,len(i))
			print("posx: ",posxdeletrasdepalabras,"posxy: ",posydeletrasdepalabras)
			#espacio_libre_u_ocupado(primeraLe_grilla_x, primeraLe_grilla_y,)
			clear_posxposy()
		if len(i)==5:
			print (i)
			ub_letra_de_grillas()
			direccion_palabra(primeraLe_grilla_x,primeraLe_grilla_y,len(i))
			print("posx: ",posxdeletrasdepalabras,"posxy: ",posydeletrasdepalabras)
			clear_posxposy()
		if len(i)==6:
			for e in i:
				print(e)
		if len(i)==7:
			for e in i:
				print(e)
		if len(i)==8:
			for e in i:
				print(e)
		
			
			pass
		
		cnt+=1

	
	
	#espacio_libre_u_ocupado(0,130,"Ñ")
	print(grilla_espacios)
	print(letras_de_palabras_en_grilla)
	pass
	
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
		
	pass


func espacio_libre_u_ocupado(x,y,letra):
	var cnt_grilla = 0
	var is_letter_in_grid = true
	for i in grillas_x_col:
		for e in grillas_y_fila:
			if x==i and y==e:
				for a in grilla_espacios:
					if a in grilla_espacios:
						if a==[x,y] and letras_de_palabras_en_grilla[cnt]==0:
							grilla_espacios.remove_at(cnt_grilla)
							letras_de_palabras_en_grilla[cnt_grilla]=letra
							pass
						cnt_grilla+=1
					pass
			
				pass
	pass
	
func ub_letra_de_grillas():
	primeraLe_grilla_x = grillas_x_col.pick_random()
	primeraLe_grilla_y = grillas_x_col.pick_random()

func primer_letra_lib_u_ocupado(x,y,letra):
	var cnt_grilla = 0
	var is_letter_in_grid = true
	for i in grillas_x_col:
		for e in grillas_y_fila:
			if x==i and y==e:
				for a in grilla_espacios:
					if a in grilla_espacios:
						if a==[x,y] and (letras_de_palabras_en_grilla[cnt]==0 or letra==letras_de_palabras_en_grilla[cnt]):
							grilla_espacios.remove_at(cnt_grilla)
							letras_de_palabras_en_grilla[cnt_grilla]=letra
							pass
						cnt_grilla+=1
					pass
			
				pass
	pass

func direccion_palabra(x,y,cantidad_de_letras): #Tiene un error de redundancia ciclica
	var horvertdiag= randi_range(0,2) #0=horizontal, 1=vertical, 2=diagonal
	var atraadelarribaabajo = randi_range(0,1) #0= izquierdaaderecha 1=derechaaizquierda 0=arribaaabajo 1=abajoaarriba
	var dirdiagonal = randi_range(0,3)
	var i_cnt = 0
	
	if horvertdiag == 0 and atraadelarribaabajo==0:
		print("00")
		while i_cnt<cantidad_de_letras:
			posxdeletrasdepalabras.append(x)
			posydeletrasdepalabras.append(y)
			x+=65
			
			if x>585:
				i_cnt=-1
				clear_posxposy()
				x=grillas_x_col.pick_random()
				
			
			i_cnt+=1
	if horvertdiag == 0 and atraadelarribaabajo==1:
		print("01")
		while i_cnt<cantidad_de_letras:
			posxdeletrasdepalabras.append(x)
			posydeletrasdepalabras.append(y)
			x-=65
			if x<0:
				i_cnt=-1
				clear_posxposy()
				x=grillas_x_col.pick_random()
				
			i_cnt+=1
	if horvertdiag == 1 and atraadelarribaabajo==0:
		print("02")
		while i_cnt<cantidad_de_letras:
			posxdeletrasdepalabras.append(x)
			posydeletrasdepalabras.append(y)
			y+=65
			if y>585:
				
				i_cnt=-1
				clear_posxposy()
				y=grillas_x_col.pick_random()
				
				
	
			i_cnt+=1
	if horvertdiag == 1 and atraadelarribaabajo==1:
		print("03")
		while i_cnt<cantidad_de_letras:
			posxdeletrasdepalabras.append(x)
			posydeletrasdepalabras.append(y)
			y-=65
			if y<0:
				
				i_cnt=-1
				clear_posxposy()
				y=grillas_x_col.pick_random()
			i_cnt+=1
	if horvertdiag == 2 and dirdiagonal==0:
		print("04")
		while i_cnt<cantidad_de_letras:
			posxdeletrasdepalabras.append(x)
			posydeletrasdepalabras.append(y)
			x+=65
			y-=65
			if x>585 or y<0:
				i_cnt=-1
				clear_posxposy()
				x=grillas_x_col.pick_random()
				y=grillas_x_col.pick_random()
				
			i_cnt+=1
	if horvertdiag == 2 and dirdiagonal==1:
		print("05")
		while i_cnt<cantidad_de_letras:
			posxdeletrasdepalabras.append(x)
			posydeletrasdepalabras.append(y)
			x+=65
			y+=65
			if x>585 or y>585:
				i_cnt=-1
				clear_posxposy()
				x=grillas_x_col.pick_random()
				y=grillas_x_col.pick_random()
				
			i_cnt+=1
	if horvertdiag == 2 and dirdiagonal==2:
		print("06")
		while i_cnt<cantidad_de_letras:
			posxdeletrasdepalabras.append(x)
			posydeletrasdepalabras.append(y)
			x-=65
			y+=65
			if x<0 or y>585:
				i_cnt=-1
				clear_posxposy()
				x=grillas_x_col.pick_random()
				y=grillas_x_col.pick_random()
				
			i_cnt+=1
	if horvertdiag == 2 and dirdiagonal==3:
		print("07")
		while i_cnt<cantidad_de_letras:
			posxdeletrasdepalabras.append(x)
			posydeletrasdepalabras.append(y)
			x-=65
			y-=65
			if x<0 or y<0:
				i_cnt=-1
				clear_posxposy()
				x=grillas_x_col.pick_random()
				y=grillas_x_col.pick_random()
				
			i_cnt+=1
	pass
func clear_posxposy():
	posxdeletrasdepalabras.clear()
	posydeletrasdepalabras.clear()
	pass
#Hacer hasta palabras de 8 letras para la sopa, de 2 letras no hay,
