--This program handles backgrounds
--bg(COLOR) pass a color in the colors.black forman
--fg(X,Y,Xlen,Ylen) x,y = begin x and y Xlen,Ylen = size
 
--options for the gui
options = {
  ' Edit  ',
  ' Run   ',
  ' Power '
}
 
menuOpen = false
 
 
 
function bg(COLOR)
  if COLOR == nil then COLOR = colors.lightGray end
  term.setBackgroundColor(COLOR)
  term.clear()
end
 
function fg(X,Y,Xlen,Ylen)
  if X == nil then X = 2 end
  if Y == nil then Y = 2 end
  local x,y = term.getSize()
  if Xlen == nil then Xlen = x-2 end
  if Ylen == nil then Ylen = y-2 end
  local window = window.create(term.current(),X,Y,Xlen,Ylen)
  return window
end
 
function menuBar(Win,Color)
  if Color == nil then Color = colors.gray end
  local x,y = Win.getSize()
  Win.setCursorPos(1,y)
  Win.setBackgroundColor(Color)
  Win.write(" Menu  ")
end
 
function extendBar(Win,select)
  if select == nil then select = 0 end
  local x,y = Win.getSize()
  Win.setBackgroundColor(colors.lightGray)
  Win.setCursorPos(1,y)
  Win.write(" Menu  ")
  Win.setBackgroundColor(colors.gray)
  for c=1,#options do
    if select == c then
      Win.setBackgroundColor(colors.lightBlue)
    end
    Win.setCursorPos(1,y-c)
    Win.write(options[c])
    Win.setBackgroundColor(colors.gray)
  end
end
 
function touchMenu()
  local event, button, xPos, yPos = os.pullEvent("mouse_click")
 
  --print(xPos..' '..yPos)
  if xPos > 1 and xPos < 9 then
    if menuOpen == false then
      extendBar(win)
      menuOpen = true
    else
      win.setBackgroundColor(colors.blue)
      win.clear()
      menuBar(win)
      menuOpen = false
    end
  end
end
 
bg()
win = fg()
win.setBackgroundColor(colors.blue)
win.clear()
menuBar(win,colors.gray)
 
term.setCursorPos(1,1)
term.setBackgroundColor(colors.lightGray)
while true do
  touchMenu()
end
