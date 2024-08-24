extends CheckBox
#V-sync

# Called when the node enters the scene tree for the first time.
func _ready():
	self.set_pressed(Variables.VSYNC)
	self.connect("pressed",Callable(self, "on_checkbox_toggled"))

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func on_checkbox_toggled():
	print("worked")
	if self.button_pressed == true:
		print("true")
		Variables.VSYNC= true
		Variables._save_settings()
		Variables.Set_Settings()
	elif self.button_pressed == false:
		print("false")
		Variables.VSYNC= false
		Variables._save_settings()
		Variables.Set_Settings()
