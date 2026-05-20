extends Node3D

@onready var ui = $UI

var player_score := 0
var kill_count := 0
var is_game_over := false

func _ready() -> void:
	process_mode = Node.PROCESS_MODE_ALWAYS
	ui.hide_all_overlays()

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("quit"):
		get_tree().quit()
	elif event.is_action_pressed("reset"):
		call_deferred("reset_game")
	elif event.is_action_pressed("pause"):
		if is_game_over:
			return
		call_deferred("toggle_pause")

func toggle_pause() -> void:
	get_tree().paused = !get_tree().paused
	if get_tree().paused:
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	else:
		Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	ui.show_pause(get_tree().paused)

func reset_game() -> void:
	get_tree().paused = false
	is_game_over = false
	player_score = 0
	kill_count = 0
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	get_tree().reload_current_scene()

func increase_score() -> void:
	player_score += 50
	ui.set_score(player_score)

func increase_kill_count() -> void:
	kill_count += 1
	ui.set_kills(kill_count)

func _on_mob_spawner_3d_mob_spawned(mob) -> void:
	mob.died.connect(func():
		increase_score()
		increase_kill_count()
		do_poof(mob.global_position))
	do_poof(mob.global_position)

func do_poof(mob_position: Vector3) -> void:
	const SMOKE_PUFF := preload("res://mob/smoke_puff/smoke_puff.tscn")
	var poof := SMOKE_PUFF.instantiate()
	add_child(poof)
	poof.global_position = mob_position

func _on_kill_plane_body_entered(_body) -> void:
	is_game_over = true
	get_tree().paused = true
	ui.show_game_over()
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
