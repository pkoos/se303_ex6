class ButtonDisplay
	def initialize(button_data, is_dark_mode)
		...
	end

	def draw_button
		if is_dark_mode
			# darken foreground color for dark mode
			draw_dark_button
		else
			# lighten foreground color for non-dark mode
			draw_light_button
		end
	end

	def draw_dark_button
		paint(button_data.label_text, button_data.x, button_data.y, button_data.foreground_color - 10, '#111111')
	end
	
	def draw_light_button
		paint(button_data.label_text, button_data.x, button_data.y, button_data.foreground_color + 10, '#E0E0E0')
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

end


button_data = ButtonData.new(label, x, y, fore_color, color_string_here)
button_display = ButtonDisplay.new(button_data, is_dark_mode)
if dark_mode_flag
	draw_button(dark_mode_flag, button_data)
else
	draw_button(dark_mode_flag, button_data)
end