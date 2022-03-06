*mini_window
[nowait]
[if exp="tf.counter != tf.MAX_MINIWINDOW_NUM"]
	
	[eval exp="tf.WindowCount = tf.counter + (tf.MAX_MINIWINDOW_NUM * tf.currentTab)"]

	[current layer="message8"]
	
	[eval exp="tf.temp_x = global.GetMiniWindowPosition(0, 0, 3, tf.counter)"]
	[eval exp="tf.temp_y = global.GetMiniWindowPosition(1, 1, 3, tf.counter)"]
	[locate x="&tf.temp_x" y="&tf.temp_y"]

	
	[eval exp="tf.currentLayer += 1"]
	[image layer="&tf.currentLayer" storage="mini_window_row.png" visible="true" left="&tf.temp_x" top="&tf.temp_y"]

	
	[eval exp="tf.SWindowName = global.CreateButtonHintName(tf.SW_HINT_NAME,tf.WindowCount)"]
	[button graphic="mini_window.png" hint="&tf.SWindowName" exp="global.MiniWindowAction(8, 'TabScene.ks', '*Return')"]
	
	
	[current layer="message10"]
	[locate x="&tf.temp_x + 10" y="&tf.temp_y"]
	[ch text="No."]
	[ch text="&tf.WindowCount"]
	[locate x="&tf.temp_x + 10" y="&tf.temp_y + 30"]
	[ch text="&kag.getBookMarkDate(tf.WindowCount)"] 
	
	[if exp="kag.getBookMarkPageName(tf.WindowCount)!='(ñ¢ê›íË)'"]
		[current layer="message9"]
		[eval exp="tf.temp_d_x = (tf.temp_x + tf.MINIWINDOW_SIZE_W - tf.DELETE_SIZE_W - 25)"]
		[locate x="&tf.temp_d_x" y="&tf.temp_y"]
		[eval exp="tf.DeleteName = global.CreateButtonHintName(tf.DL_HINT_NAME,tf.WindowCount)"]
		[button graphic="delete.jpg" hint="&tf.DeleteName" exp="global.DeleteAction('TabScene.ks', '*Return')"]
	[endif]	
	
	[eval exp="tf.currentLayer += 1"]
	[if exp="kag.getBookMarkPageName(tf.WindowCount)!='(ñ¢ê›íË)'"]
		[image storage="&kag.getBookMarkFileNameAtNum(tf.WindowCount)" layer="&tf.currentLayer" visible="true" left="&tf.temp_x + 25" top="&tf.temp_y + 90"] 
	[else]
		[layopt layer="&tf.currentLayer" visible="false"]
	[endif]	
	[eval exp="++tf.counter"]	
	[jump target="*mini_window"]

[else]

	[eval exp="tf.counter = 0"]

[endif]
[endnowait]
[return]
