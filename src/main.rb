require 'gosu'
require_relative './main_menu'
require_relative './options_menu'

class Main < Gosu::Window

	def initialize
		super 640, 400
		@background = Gosu::Image.new("../images/titlescreen.png", :tileable => true)
		self.caption = "World of Wizards"
		@options_menu = OptionsMenu.new(self)
		@main_menu = MainMenu.new(self)
	end

	def update
	end

	def draw
		@main_menu.draw
	end

	def button_down(id)
		@main_menu.button_down(id)
	end

	def button_up(id)
		@main_menu.button_up(id)
	end
end

main = Main.new
main.show
