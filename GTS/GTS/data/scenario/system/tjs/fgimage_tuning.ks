[iscript]
function tuning_event(key, shift) {
	//! オプションキーによって挙動を変える
	if(shift == 0) {
		switch(key) {
			case VK_W: tf.f_t_top -= 10; break;
			case VK_A: tf.f_t_left -= 10; break;
			case VK_S: tf.f_t_top += 10; break;
			case VK_D: tf.f_t_left += 10; break;
			case VK_UP: tf.f_t_top -= 1; break;
			case VK_LEFT: tf.f_t_left -= 1; break;
			case VK_DOWN: tf.f_t_top += 1; break;
			case VK_RIGHT: tf.f_t_left += 1; break;
		}
		kag.process("fgimage_tuning_room.ks", "*update");
	}
	if( (shift & ssShift) != 0) {
		if(key == VK_SHIFT) return;
		if(key == VK_UP) {
			tf.f_t_current += 1;
		} else if(key == VK_DOWN) {
			tf.f_t_current += 10;
		}
		if(key == VK_LEFT) {
			tf.f_t_size += 2;
		} else if(key == VK_RIGHT) {
			tf.f_t_size += 1;
		}
		tf.f_t_current = tf.f_t_current % 11;
		tf.f_t_size = tf.f_t_size % 3;
		kag.process("fgimage_tuning_room.ks", "*change");
	}
}

function getFTStandStorage() {
	var name = tf.eyeInfo[tf.f_t_current].fg.substring(1);
	name =tf.f_t_sizemap[tf.f_t_size] + name;
	return name;
}
[endscript]
[return]
