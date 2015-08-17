
class MainMenu 

  def initialize(window)
  	@window = window
   	@titlescreen = Gosu::Image.new("../images/titlescreen.png", :tileable => true)
   	@title = Gosu::Image.from_text(@window, "World of Wizards", "Monospace", 50)
   	@play_button = Gosu::Image.from_text(@window, "Play", "Monospace", 35)
   	@options_button = Gosu::Image.from_text(@window, "Options", "Monospace", 35)
   	@quit_button = Gosu::Image.from_text(@window, "Quit", "Monospace", 35)
   	@selection_color = Gosu::Color.argb(0xff00ffff)
   	@position = 100
  end

 	def update
 	end

 	def draw
 		@titlescreen.draw(0,0,0)
 		@title.draw(160,50,0)

 		@play_button.draw(290,100,0,1,1,@selection_color)
 		if !(@position == 100)
 			@play_button.draw(290,100,0)		
 		elsif (@position == 100)
 			@play_button.draw(290,100,0,1,1,@selection_color)
 		end

 		@options_button.draw(270,150,0)
 		if !(@position == 150)
 			@options_button.draw(270,150,0)
 		elsif (@position == 150)
 			@options_button.draw(270,150,0,1,1,@selection_color)
 		end

 		@quit_button.draw(290,200,0)
 		if !(@position == 200)
 			@quit_button.draw(290,200,0)
 		elsif (@position == 200)
 			@quit_button.draw(290,200,0,1,1,@selection_color)
 		end
 	end

 	def button_down(id)
 		case id
 		when Gosu::KbDown
 			@position += 50
 		when Gosu::KbEnter
 		end
 	end

 	def button_up(id)
 		case id
 		when Gosu::KbUp
 			@position -= 50
 		end
 	end

end
