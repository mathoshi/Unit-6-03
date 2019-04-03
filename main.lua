-----------------------------------------------------------------------------------------
--
-- Created by: Matsuru Hoshi
-- Created on: Apr 3, 2019
--
-- This file will play with if statements
-----------------------------------------------------------------------------------------

local button = display.newRect( 160, 400, 100, 60)

local textBox = native.newTextField( 160, 200, 200, 60)
textBox.id = 'text box'

local output = display.newText( "", 160, 300, "Times New Roman", 20)
output:setFillColor( 1, 1, 1)


local function Check( event )

local input = tonumber(textBox.text)

	if (input >= 0) then
		output.text = "It's positive!"
	elseif (input <= 0) then
		output.text = "It's negative!"
	end
end

button:addEventListener( "touch", Check)