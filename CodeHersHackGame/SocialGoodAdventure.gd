extends Control

var all_locations = [
	"classroom",
	"back_of_classroom"
]

var current_location = all_locations[0]

var locations = {
	classroom = "You are in high school. You go to your classroom and notice a [color=red] crowd [/color] at the back",
	back_of_classroom = "You reach the back of the classroom and notice a few [color=blue]bullies[/color] bullying a student."
}
var command = false

func _physics_process(delta):
	$location.text = current_location
	
func _on_LineEdit_text_entered(new_text):
	if command == false:
		$Background/TextArea.bbcode_text += new_text
	else:
		pass
		
	if new_text == "look":
		if current_location == all_locations[0]:
			$Background/TextArea.bbcode_text += locations.classroom + "\n"
		elif current_location == all_locations[1]:
			$Background/TextArea.bbcode_text += locations.back_of_classroom + "\n"
	
	elif new_text == "go to" + "bullies":
		current_location = all_locations[1]
		$Backround/TextArea.bbcode_text = ""
