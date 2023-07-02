paintutils.drawFilledBox(0, 0, 100, 100, colors.black)
paintutils.drawBox(1, 1, 10, 6, colors.blue)
print("\nLua Term..")
luatermsx = 0
luatermsy = 0
luatermex = 7
luatermey = 7
function clear()
	paintutils.drawFilledBox(0, 0, 1000, 1000, colors.black)
end

while true do
	local event, button, x, y = os.pullEvent("mouse_click")
	if x > luatermsx and x < luatermex then
		luaxrange = 1
	else
		luaxrange = 0
	end
	
	if y > luatermsy and y < luatermey then
		luayrange = 1
	else
		luayrange = 0
	end

	if luayrange == 1 and luaxrange == 1 then
		clear()
		paintutils.drawFilledBox(10, 0, 20, 10, colors.red)
	end
end		
