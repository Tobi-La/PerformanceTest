extends Label



func _ready():
	var timer = Timer.new()
	timer.autostart = 1
	timer.one_shot = false
	timer.wait_time = 1.0
	timer.connect("timeout",self,"_refreshFPS")
	add_child(timer)
	_refreshFPS()
	
func _refreshFPS():
	set_text(str(Engine.get_frames_per_second()))
