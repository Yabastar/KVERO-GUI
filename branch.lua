local function dBWCN(x, y, width, height, name)
  -- Draw the box
  term.setBackgroundColor(colors.gray)
  term.setTextColor(colors.white)
  term.clear()

  term.setBackgroundColor(colors.lightGray)
  term.setTextColor(colors.black)
  term.setCursorPos(x, y)
  term.write(string.rep(" ", width))
  for i = y + 1, y + height - 1 do
    term.setCursorPos(x, i)
    term.write(" ")
    term.setCursorPos(x + width - 1, i)
    term.write(" ")
  end
  term.setCursorPos(x, y + height)
  term.write(string.rep(" ", width))

  -- Draw the name
  term.setTextColor(colors.white)
  term.setCursorPos(x + 2, y + 1)
  term.write(name)

  -- Monitor event handling
  local monitor = peripheral.find("monitor")
  if monitor then
    while true do
      local event, side, xClick, yClick = os.pullEvent("monitor_touch")
      if side == monitor.getPeripheralName() and xClick >= x and xClick <= x + width - 1 and yClick >= y and yClick <= y + height then
        print("Clicked on box with name: " .. name)
        break
      end
    end
  end
end

-- Example usage
dBWCN(5, 5, 20, 10, "Clickable Box")
