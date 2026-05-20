extends CanvasLayer

@onready var hud = $HUD
@onready var pause_menu = $PauseMenu
@onready var game_over = $GameOver
@onready var score_label = %ScoreLabel
@onready var kills_label = %KillsLabel
@onready var high_score_label = %HighScoreLabel
@onready var retry_button = %RetryButton

var high_score := 0
var save_path := "user://save.dat"

func _ready() -> void:
	load_high_score()
	hide_all_overlays()

func set_score(value: int) -> void:
	score_label.text = "SCORE: " + str(value)
	if value > high_score:
		high_score = value
		save_high_score()
		update_high_score_label()

func set_kills(value: int) -> void:
	kills_label.text = "KILLS: " + str(value)

func show_pause(state: bool) -> void:
	pause_menu.visible = state

func show_game_over() -> void:
	game_over.visible = true
	pause_menu.visible = false

func hide_all_overlays() -> void:
	game_over.visible = false
	pause_menu.visible = false

func update_high_score_label() -> void:
	high_score_label.text = "HIGH SCORE: " + str(high_score)

func save_high_score() -> void:
	var file = FileAccess.open(save_path, FileAccess.WRITE)
	file.store_var(high_score)

func load_high_score() -> void:
	if FileAccess.file_exists(save_path):
		var file = FileAccess.open(save_path, FileAccess.READ)
		high_score = file.get_var()
	update_high_score_label()

func reset_high_score() -> void:
	high_score = 0
	save_high_score()
	update_high_score_label()

func _on_retry_button_pressed() -> void:
	get_tree().paused = false
	get_tree().reload_current_scene()

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("reset_highscore"):
		reset_high_score()
