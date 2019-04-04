-----------------------------------------------------------------------------------------
--
-- Created by: Matsuru Hoshi
-- Created on: Apr 3, 2019
--
-- This file will check your age and see if you are deemed worthy of watching a movie for a certain audience.
-----------------------------------------------------------------------------------------

local button = display.newRect( 160, 400, 200, 100)

local textField = native.newTextField( 160, 200, 100, 40)
textField.id = "text field"

local output = display.newText( "", 100, 100, 200, 200, "Times New Roman", 25)
output:setFillColor( 1, 1, 1)

local function CheckAge( event )

local age = tonumber(textField.text)

	if (age >= 17) then
		output.text = "You can watch an R rated movie alone."
	elseif (age >= 13 ) then
		output.text = "You can watch PG-13 movies alone."
	else
		output.text = "You can watch G rated movies alone or you need parent supervision."
	end
end

button:addEventListener( "touch", CheckAge)
