require 'gosu'
require_relative './options_menu'

class MainMenu < Gosu::Window
  def initialize
   	super 640, 400
   	self.caption = "World of Wizards"
   	@titlescreen = Gosu::Image.new("../images/titlescreen.png", :tileable => true)
   	@title = Gosu::Image.from_text(self, "World of Wizards", "Monospace", 50)
   	@play_button = Gosu::Image.from_text(self, "Play", "Monospace", 35)
   	@options_button = Gosu::Image.from_text(self, "Options", "Monospace", 35)
   	@quit_button = Gosu::Image.from_text(self, "Quit", "Monospace", 35)
   	@cursor = Gosu::Image.from_text(self, "@", "Monospace", 15)
   	@mouse_over_color = Gosu::Color.argb(0xff00ffff)
  end

 	def update
 	end

 	def draw
 		@titlescreen.draw(0,0,0)
 		@cursor.draw(self.mouse_x,self.mouse_y,0)
 		@title.draw(160,50,0)

 		@play_button.draw(290,100,0)
 		if !(self.mouse_y > 100 && self.mouse_y < 136) && !(self.mouse_x > 290 && self.mouse_x < 340)
 			@play_button.draw(290,100,0)		elsif (self.mouse_y > 100 && self.mouse_y < 136) && (self.mouse_x > 290 && self.mouse_x < 340)
 			@play_button.draw(290,100,0,1,1,@mouse_over_color)
 		end

 		@options_button.draw(270,150,0)
 		if !(self.mouse_y > 150 && self.mouse_y < 186) && !(self.mouse_x > 270 && self.mouse_x < 370)
 			@options_button.draw(270,150,0)
 		elsif (self.mouse_y > 150 && self.mouse_y < 186) && (self.mouse_x > 270 && self.mouse_x < 370)
 			@options_button.draw(270,150,0,1,1,@mouse_over_color)
 		end
 		if (self.mouse_y > 150 && self.mouse_y < 186) && (self.mouse_x > 270 && self.mouse_x < 370) && (self.button_down?(Gosu::MsLeft))
 			self.close
 			options_window = OptionsMenu.new()
 			options_window.options() #loop needed here to keep this window open
 		end                        #check for boolean to keep window open

 		@quit_button.draw(290,200,0)
 		if !(self.mouse_y > 200 && self.mouse_y < 236) && !(self.mouse_x > 290 && self.mouse_x < 340)
 			@quit_button.draw(290,200,0)
 		elsif (self.mouse_y > 200 && self.mouse_y < 236) && (self.mouse_x > 290 && self.mouse_x < 340)
 			@quit_button.draw(290,200,0,1,1,@mouse_over_color)
 		end
 	end
end

window = MainMenu.new
window.show
