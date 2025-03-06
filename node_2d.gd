extends Control

@export var palabras_txt: String = "res://palabras.txt"
@onready var grid_container = $GridContainer
@onready var boton_generar = $BotonGenerar
@onready var palabras_container = $PalabrasContainer

const SIZE = 10
var sopa = []
var palabras = []
var palabras_elegidas = []

func _ready():
	boton_generar.pressed.connect(_generar_sopa)
	_cargar_palabras()
	_generar_sopa()

func _cargar_palabras():
	var file = FileAccess.open(palabras_txt, FileAccess.READ)
	if file:
		while not file.eof_reached():
			var word = file.get_line().strip_edges().to_upper()
			if word.length() > 0:
				palabras.append(word)
		file.close()

func _generar_sopa():
	sopa.clear()
	for child in grid_container.get_children():
		child.queue_free()
	for child in palabras_container.get_children():
		child.queue_free()
	
	sopa.resize(SIZE)
	for i in range(SIZE):
		sopa[i] = []
		for j in range(SIZE):
			sopa[i].append(" ")
	
	palabras_elegidas.clear()
	palabras.shuffle()
	for i in range(min(10, palabras.size())):
		palabras_elegidas.append(palabras[i])
	
	for palabra in palabras_elegidas:
		_insertar_palabra(palabra)
	
	_rellenar_sopa()
	_mostrar_sopa()
	_mostrar_palabras()

func _insertar_palabra(palabra: String):
	var dir_x = [1, 0, 1, -1]
	var dir_y = [0, 1, 1, 1]
	var intentos = 50
	while intentos > 0:
		var x = randi() % SIZE
		var y = randi() % SIZE
		var dir = randi() % 4
		if _puede_insertar(x, y, palabra, dir_x[dir], dir_y[dir]):
			for i in range(palabra.length()):
				sopa[x + i * dir_x[dir]][y + i * dir_y[dir]] = palabra[i]
			return
		intentos -= 1

func _puede_insertar(x, y, palabra, dir_x, dir_y):
	if x + dir_x * (palabra.length() - 1) >= SIZE or x + dir_x * (palabra.length() - 1) < 0:
		return false
	if y + dir_y * (palabra.length() - 1) >= SIZE or y + dir_y * (palabra.length() - 1) < 0:
		return false
	for i in range(palabra.length()):
		if sopa[x + i * dir_x][y + i * dir_y] != " ":
			return false
	return true

func _rellenar_sopa():
	for i in range(SIZE):
		for j in range(SIZE):
			if sopa[i][j] == " ":
				sopa[i][j] = char(randi() % 26 + 65)

func _mostrar_sopa():
	grid_container.columns = SIZE
	for i in range(SIZE):
		for j in range(SIZE):
			var label = Label.new()
			label.text = sopa[i][j]
			label.add_theme_color_override("font_color", Color.BLACK)
			label.add_theme_font_size_override("font_size", 24)
			label.custom_minimum_size = Vector2(40, 40)
			label.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
			label.vertical_alignment = VERTICAL_ALIGNMENT_CENTER
			var bg = ColorRect.new()
			bg.color = Color.WHITE
			bg.custom_minimum_size = Vector2(40, 40)
			bg.add_child(label)
			grid_container.add_child(bg)

func _mostrar_palabras():
	for palabra in palabras_elegidas:
		var label = Label.new()
		label.text = palabra
		label.add_theme_color_override("font_color", Color.BLACK)
		label.add_theme_font_size_override("font_size", 20)
		palabras_container.add_child(label)
