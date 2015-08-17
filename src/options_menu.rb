
class OptionsMenu 

	def initialize(window)
		@window = window
		@title = Gosu::Image.from_text(@window, "Options Menu", "Monospace", 50)
		@load_game = Gosu::Image.from_text(@window, "Load Game", "Monospace", 35)
		@sound_options = Gosu::Image.from_text(@window, "Sound Options", "Monospace", 35)
		@return_to_main = Gosu::Image.from_text(@window, "Return to Main Menu", "Monospace", 35)
		@selection_color = Gosu::Color.argb(0xff00ffff)
		@position = 100
	end

	def update
	end

	def draw()
		@title.draw(160,50,0)
		@load_game.draw(290,100,0,1,1,@selection_color)
		if !(@position == 100)
 			@load_game.draw(290,100,0)
 		elsif (@position == 100)
 			@load_game.draw(290,100,0,1,1,@selection_color)
 		end

 		@sound_options.draw(270,150,0)
 		if !(@position == 150)
 			@sound_options.draw(270,150,0)
 		elsif (@position == 150)
 			@sound_options.draw(270,150,0,1,1,@selection_color)
 		end

 		@return_to_main.draw(290,200,0)
 		if !(@position == 200)
 			@return_to_main.draw(290,200,0)
 		elsif (@position == 200)
 			@return_to_main.draw(290,200,0,1,1,@selection_color)
 		end
	end

end