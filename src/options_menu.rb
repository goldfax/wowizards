require 'gosu'


class OptionsMenu < Gosu::Window
	def initialize
		super 640, 400
		@background = Gosu::Image.new("../images/titlescreen.png", :tileable => true)
		@title = Gosu::Image.from_text(self, "Options Menu", "Monospace", 50)
		@load_game = Gosu::Image.from_text(self, "Load Game", "Monospace", 35)
		@sound_options = Gosu::Image.from_text(self, "Sound Options", "Monospace", 35)
		@return_to_main = Gosu::Image.from_text(self, "Return to Main Menu", "Monospace", 35)
		@cursor = Gosu::Image.from_text(self, "@", "Monospace", 15)
		@mouse_over_color = Gosu::Color.argb(0xff00ffff)
	end

	def update
	end

	def options
		@background.draw(0,0,0)
		@cursor.draw(self.mouse_x,self.mouse_y,0)
		@title.draw(160,50,0)

		@load_game.draw(290,100,0)
		if !(self.mouse_y > 100 && self.mouse_y < 136) && !(self.mouse_x > 290 && self.mouse_x < 340)
 			@load_game.draw(290,100,0)
 		elsif (self.mouse_y > 100 && self.mouse_y < 136) && (self.mouse_x > 290 && self.mouse_x < 340)
 			@load_game.draw(290,100,0,1,1,@mouse_over_color)
 		end

 		@sound_options.draw(270,150,0)
 		if !(self.mouse_y > 150 && self.mouse_y < 186) && !(self.mouse_x > 270 && self.mouse_x < 370)
 			@sound_options.draw(270,150,0)
 		elsif (self.mouse_y > 150 && self.mouse_y < 186) && (self.mouse_x > 270 && self.mouse_x < 370)
 			@sound_options.draw(270,150,0,1,1,@mouse_over_color)
 		end

 		@return_to_main.draw(290,200,0)
 		if !(self.mouse_y > 200 && self.mouse_y < 236) && !(self.mouse_x > 270 && self.mouse_x < 370)
 			@return_to_main.draw(290,200,0)
 		elsif (self.mouse_y > 200 && self.mouse_y < 236) && (self.mouse_x > 270 && self.mouse_x < 370)
 			@return_to_main.draw(290,200,0,1,1,@mouse_over_color)
 		end
	end

	def checker
		true
	end
end