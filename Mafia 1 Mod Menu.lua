-- Create a table to store the settings
local settings = {}

-- Function to save the settings
local function saveSettings()
    -- Iterate through the cheat table and save the settings
    for i = 0, 15 do
        local address = getMemoryAddress(i)
        local value = readInteger(address)
        settings[i] = value
    end
    -- Save the settings to a file
    local file = io.open("mafia_settings.txt", "w")
    for i, value in pairs(settings) do
        file:write(i.. "=".. value.. "\n")
    end
    file:close()
end

-- Function to load the settings
local function loadSettings()
    -- Load the settings from the file
    local file = io.open("mafia_settings.txt", "r")
    if file then
        for line in file:lines() do
            local i, value = line:match("^(%d+)=(%d+)$")
            if i and value then
                local address = getMemoryAddress(tonumber(i))
                writeInteger(address, tonumber(value))
            end
        end
        file:close()
    end
end

-- Add a menu item to save the settings
menu.addMenuItem("Save Settings", saveSettings)

-- Add a menu item to load the settings
menu.addMenuItem("Load Settings", loadSettings)