class ButtonDisplay
	def initialize(button_data)
		...
	end

	def draw_button
		paint(button_data.label_text, button_data.x, button_data.y, button_data.foreground_color - 10, button_data.color_string)
	end
end

class ButtonData
	attr_reader :label :x :y :fore_color :color_string
	def initialize(label, x, y, fore_color, color_string)
		@label = label
		@x = x
		@y = y
		@fore_color = fore_color
		@color_string = color_string
	end
end

class DarkModeButton < ButtonData
	def initialize(color_string = '#111111')
		super
		@fore_color = fore_color -10
		@color_string = color_string
	end
end

class LightModeButton < ButtonData
	def initialize(color_string = 'E0E0E0')
		super
		@fore_color = fore_color + 10
		@color_string color_string
end

if dark_mode_flag
	ButtonDisplay.new(DarkModeButton.new(label, x, y, fore_color).draw_button
else
	ButtonDisplay.new(LightModeButton.new(label, x, y, fore_color).draw_button
end