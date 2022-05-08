def draw_button(label_text, x, y, foreground_color, is_dark_mode, button_data)
  if is_dark_mode
    # darken foreground color for dark mode
    paint(label_text, x, y, foreground_color - 10, '#111111')
  else
    # lighten foreground color for non-dark mode
    paint(label_text, x, y, foreground_color + 10, '#E0E0E0')
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

button_data = ButtonData.new(label, x, y, fore_color, color_string_here)
draw_button(label_data, x, y, foreground_color, is_dark_mode, button_data)