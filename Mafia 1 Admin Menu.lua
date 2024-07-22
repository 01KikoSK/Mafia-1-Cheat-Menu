-- Create an admin menu
local adminMenu = menu.addMenu("Mafia Admin")

-- Add a submenu for player management
local playerMenu = adminMenu.addSubMenu("Player Management")

-- Add a cheat to spawn a new player
local spawnPlayer = playerMenu.addCheckBox("Spawn New Player")
spawnPlayer:setHotkey("Ctrl+P")
spawnPlayer:setScript(function()
    local playerSpawnAddress = 0x00412345 -- adjust this address to the player spawn address
    writeInteger(playerSpawnAddress, 1)
end)

-- Add a cheat to teleport a player to a location
local teleportPlayer = playerMenu.addCheckBox("Teleport Player")
teleportPlayer:setHotkey("Ctrl+T")
teleportPlayer:setScript(function()
    local playerTeleportAddress = 0x00456789 -- adjust this address to the player teleport address
    writeInteger(playerTeleportAddress, 1)
end)

-- Add a cheat to give a player money
local giveMoney = playerMenu.addCheckBox("Give Player Money")
giveMoney:setHotkey("Ctrl+G")
giveMoney:setScript(function()
    local playerMoneyAddress = 0x00490123 -- adjust this address to the player money address
    writeInteger(playerMoneyAddress, 10000)
end)

-- Add a submenu for game management
local gameMenu = adminMenu.addSubMenu("Game Management")

-- Add a cheat to set the game time
local setTime = gameMenu.addCheckBox("Set Game Time")
setTime:setHotkey("Ctrl+S")
setTime:setScript(function()
    local gameTimeAddress = 0x00412367 -- adjust this address to the game time address
    writeInteger(gameTimeAddress, 12) -- set the time to 12:00
end)

-- Add a cheat to set the weather
local setWeather = gameMenu.addCheckBox("Set Weather")
setWeather:setHotkey("Ctrl+W")
setWeather:setScript(function()
    local weatherAddress = 0x00456798 -- adjust this address to the weather address
    writeInteger(weatherAddress, 2) -- set the weather to clear
end)

-- Add a submenu for visual management
local visualMenu = adminMenu.addSubMenu("Visual Management")

-- Add a cheat to toggle noclip
local noclip = visualMenu.addCheckBox("Noclip")
noclip:setHotkey("Ctrl+N")
noclip:setScript(function()
    local noclipAddress = 0x00412367 -- adjust this address to the noclip address
    writeInteger(noclipAddress, 1)
end)

-- Add a cheat to toggle wireframe mode
local wireframe = visualMenu.addCheckBox("Wireframe Mode")
wireframe:setHotkey("Ctrl+F")
wireframe:setScript(function()
    local wireframeAddress = 0x00456798 -- adjust this address to the wireframe mode address
    writeInteger(wireframeAddress, 1)
end)