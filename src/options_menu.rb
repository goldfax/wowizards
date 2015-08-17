


class OptionsMenu 

	def initialize(window)
		@window = window
		@title = Gosu::Image.from_text(@window, "Options Menu", "Monospace", 50)
		@load_game = Gosu::Image.from_text(@window, "Load Game", "Monospace", 35)
		@sound_options = Gosu::Image.from_text(@window, "Sound Options", "Monospace", 35)
		@return_to_main = Gosu::Image.from_text(@window, "Return to Main Menu", "Monospace", 35)
		@cursor = Gosu::Image.from_text(@window, "@", "Monospace", 15)
		@mouse_over_color = Gosu::Color.argb(0xff00ffff)
	end

	def update
	end

	def draw()
		@cursor.draw(@window.mouse_x,@window.mouse_y,0)
		@title.draw(160,50,0)

		@load_game.draw(290,100,0)
		if !(@window.mouse_y > 100 && @window.mouse_y < 136) && !(@window.mouse_x > 290 && @window.mouse_x < 340)
 			@load_game.draw(290,100,0)
 		elsif (@window.mouse_y > 100 && @window.mouse_y < 136) && (@window.mouse_x > 290 && @window.mouse_x < 340)
 			@load_game.draw(290,100,0,1,1,@mouse_over_color)
 		end

 		@sound_options.draw(270,150,0)
 		if !(@window.mouse_y > 150 && @window.mouse_y < 186) && !(@window.mouse_x > 270 && @window.mouse_x < 370)
 			@sound_options.draw(270,150,0)
 		elsif (@window.mouse_y > 150 && @window.mouse_y < 186) && (@window.mouse_x > 270 && @window.mouse_x < 370)
 			@sound_options.draw(270,150,0,1,1,@mouse_over_color)
 		end

 		@return_to_main.draw(290,200,0)
 		if !(@window.mouse_y > 200 && @window.mouse_y < 236) && !(@window.mouse_x > 270 && @window.mouse_x < 370)
 			@return_to_main.draw(290,200,0)
 		elsif (@window.mouse_y > 200 && @window.mouse_y < 236) && (@window.mouse_x > 270 && @window.mouse_x < 370)
 			@return_to_main.draw(290,200,0,1,1,@mouse_over_color)
 		end
	end

end