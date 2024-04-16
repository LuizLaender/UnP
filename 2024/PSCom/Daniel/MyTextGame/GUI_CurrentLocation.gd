extends RichTextLabel

var example_text = "This is an example text \n testing"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	scroll_text(example_text)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func scroll_text(input_text:String) -> void:
	visible_characters = 0
	text = input_text
	
	for i in get_parsed_text():
		visible_characters += 1
		await get_tree().create_timer(0.11).timeout
