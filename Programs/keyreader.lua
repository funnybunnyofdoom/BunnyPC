--This program reads and displays each key press visually.
--It displays all events in a visually pleasing manner
--There is a section for "other" that can be expanded in the future

while true do
    
    local event, param1, param2, param3 = os.pullEvent()
    if event == "key" then
    term.setCursorPos(1,1)
    print(event)
    term.setCursorPos(1,2)
    print(param1..' ')
    term.setCursorPos(1,3)
    print(tostring(param2)..' ')
    
    elseif event == "char" then
    term.setCursorPos(8,1)
    print(event)
    term.setCursorPos(8,2)
    print(param1)
     
    elseif event == "key_up" then
    term.setCursorPos(16,1)
    print(event)
    term.setCursorPos(16,2)
    print(param1..' ')
    
    elseif event == "mouse_click" then
    term.setCursorPos(1,5)
    print(event)
    term.setCursorPos(1,6)
    print(tostring(param1)..'  ')
    term.setCursorPos(1,7)
    print(tostring(param2)..'  ')
    term.setCursorPos(1,8)
    print(tostring(param3)..'  ')
    
    elseif event == "mouse_up" then
    term.setCursorPos(13,5)
    print(event)
    term.setCursorPos(13,6)
    print(tostring(param1)..'  ')
    term.setCursorPos(13,7)
    print(tostring(param2)..'  ')
    term.setCursorPos(13,8)
    print(tostring(param3)..'  ')
    
    elseif event == "mouse_scroll" then
    term.setCursorPos(23,5)
    print(event)
    term.setCursorPos(23,6)
    print(tostring(param1)..'  ')
    term.setCursorPos(23,7)
    print(tostring(param2)..'  ')
    term.setCursorPos(23,8)
    print(tostring(param3)..'  ')
    
    elseif event == "mouse_drag" then
    term.setCursorPos(1,10)
    print(event)
    term.setCursorPos(1,11)
    print(tostring(param1)..'  ')
    term.setCursorPos(1,12)
    print(tostring(param2)..'  ')
    term.setCursorPos(1,13)
    print(tostring(param3)..'  ')
    
    elseif event == "monitor_touch" then
    term.setCursorPos(12,10)
    print(event)
    term.setCursorPos(12,11)
    print(tostring(param1)..'  ')
    term.setCursorPos(12,12)
    print(tostring(param2)..'  ')
    term.setCursorPos(12,13)
    print(tostring(param3)..'  ')
    
    else
    term.setCursorPos(27,10)
    print(event..'      ')
    term.setCursorPos(27,11)
    print(tostring(param1)..'      ')
    term.setCursorPos(27,12)
    print(tostring(param2)..'      ')
    term.setCursorPos(27,13)
    print(tostring(param3)..'      ') 
    end 
end
