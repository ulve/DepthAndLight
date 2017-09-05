/// @description Hit player

with(other) {
	
	if(!invinsible) {
		life -= 1;
		show_debug_message(life);
		hit = true;
	}
}