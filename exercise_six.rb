class ButtonDisplay
	def initialize(button_data)
		...
	end

	def draw_button
		paint(button_data.label_text, 
			button_data.coordinates.x, 
			button_data.coordinatesy, 
			button_data.color.fore_color, 
			button_data.color.color_string)
	end
end

class DarkModeColor < Color
	def initialize(color_string = '#111111')
		super
	end
	def color_string
		'#111111'
	end
	def fore_color
		return @fore_color - 10
	end
end

class LightModeColor < Color
	def initialize()
		super
	end
	def color_string
		'#E0E0E0'
	end
	def fore_color
		return @fore_color + 10
	end

class Color
	attr_reader :color_string :fore_color
	def initialize(fore_color, color_string)
		@fore_color = fore_color
		@color_string = color_string
	end
end

class Coordinate
	attr_reader :x :y
	def initialize(x, y)
	end
end

class ButtonData
	attr_reader :label :x :y :color :coordinates
	def initialize(label, coordinates, color)
		@label = label
		@coordinates = coordinates
		@color = color
	end
end

class DarkModeButton < ButtonData
	def initialize
		super
		@color = DarkModeColor.new
	end
end

class LightModeButton < ButtonData
	def initialize
		super
		@color = LightModeColor.new
	end
end

def set_button_display(dark_mode)
	if dark_mode
		ButtonDisplay.new(DarkModeButton.new(label, coordinates).draw_button
	else
		ButtonDisplay.new(LightModeButton.new(label, coordinates).draw_button
	end
end



button_dark = set_button_display(true)
button_light = set_button_disp(false)