require_relative './options_menu'


class MainMenu 

  def initialize(window)
  	@window = window
   	@titlescreen = Gosu::Image.new("../images/titlescreen.png", :tileable => true)
   	@title = Gosu::Image.from_text(@window, "World of Wizards", "Monospace", 50)
   	@play_button = Gosu::Image.from_text(@window, "Play", "Monospace", 35)
   	@options_button = Gosu::Image.from_text(@window, "Options", "Monospace", 35)
   	@quit_button = Gosu::Image.from_text(@window, "Quit", "Monospace", 35)
   	@cursor = Gosu::Image.from_text(@window, "@", "Monospace", 15)
   	@mouse_over_color = Gosu::Color.argb(0xff00ffff)
  end

 	def update
 	end

 	def draw
 		@titlescreen.draw(0,0,0)
 		@cursor.draw(@window.mouse_x,@window.mouse_y,0)
 		@title.draw(160,50,0)

 		@play_button.draw(290,100,0)
 		if !(@window.mouse_y > 100 && @window.mouse_y < 136) && !(@window.mouse_x > 290 && @window.mouse_x < 340)
 			@play_button.draw(290,100,0)		
 		elsif (@window.mouse_y > 100 && @window.mouse_y < 136) && (@window.mouse_x > 290 && @window.mouse_x < 340)
 			@play_button.draw(290,100,0,1,1,@mouse_over_color)
 		end

 		@options_button.draw(270,150,0)
 		if !(@window.mouse_y > 150 && @window.mouse_y < 186) && !(@window.mouse_x > 270 && @window.mouse_x < 370)
 			@options_button.draw(270,150,0)
 		elsif (@window.mouse_y > 150 && @window.mouse_y < 186) && (@window.mouse_x > 270 && @window.mouse_x < 370)
 			@options_button.draw(270,150,0,1,1,@mouse_over_color)
 		end

 		@quit_button.draw(290,200,0)
 		if !(@window.mouse_y > 200 && @window.mouse_y < 236) && !(@window.mouse_x > 290 && @window.mouse_x < 340)
 			@quit_button.draw(290,200,0)
 		elsif (@window.mouse_y > 200 && @window.mouse_y < 236) && (@window.mouse_x > 290 && @window.mouse_x < 340)
 			@quit_button.draw(290,200,0,1,1,@mouse_over_color)
 		end
 	end

 	def button_down(id)
 		case id
 		when Gosu::MsLeft
 			true
 		end
 	end


 	

 	def options_menu
 		options_menu = OptionsMenu.new(@window)
 		if (@window.mouse_y > 150 && @window.mouse_y < 186) && (@window.mouse_x > 270 && @window.mouse_x < 370) && (self.button_down(Gosu::MsLeft))
 			while !(@window.mouse_y > 200 && @window.mouse_y < 236) && (@window.mouse_x > 270 && @window.mouse_x < 370)
 				@titlescreen.draw(0,0,0)
 				options_menu.draw
 			end
 				
 		end
 	end

end
