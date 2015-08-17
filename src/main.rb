require 'gosu'
require_relative './main_menu'
require_relative './options_menu'

class Main < Gosu::Window
	def initialize
		super 640, 400
		@background = Gosu::Image.new("../images/titlescreen.png", :tileable => true)
		self.caption = "World of Wizards"
		@main_menu = MainMenu.new(self)
	end

	def update
	end

	def draw
		@main_menu.draw
		@main_menu.options_menu
	end
end

main = Main.new
main.show
