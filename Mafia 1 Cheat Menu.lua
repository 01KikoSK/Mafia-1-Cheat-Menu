-- Create a cheat menu
local cheatMenu = menu.addMenu("Mafia Cheats")

-- Add a submenu for player cheats
local playerMenu = cheatMenu.addSubMenu("Player")

-- Add a cheat to infinite health
local infiniteHealth = playerMenu.addCheckBox("Infinite Health")
infiniteHealth:setHotkey("Ctrl+H")
infiniteHealth:setScript(function()
    local playerHealthAddress = 0x00412345 -- adjust this address to the player's health address
    writeInteger(playerHealthAddress, 100)
end)

-- Add a cheat to infinite ammo
local infiniteAmmo = playerMenu.addCheckBox("Infinite Ammo")
infiniteAmmo:setHotkey("Ctrl+A")
infiniteAmmo:setScript(function()
    local playerAmmoAddress = 0x00456789 -- adjust this address to the player's ammo address
    writeInteger(playerAmmoAddress, 999)
end)

-- Add a submenu for game cheats
local gameMenu = cheatMenu.addSubMenu("Game")

-- Add a cheat to unlock all missions
local unlockMissions = gameMenu.addCheckBox("Unlock All Missions")
unlockMissions:setHotkey("Ctrl+M")
unlockMissions:setScript(function()
    local missionUnlockAddress = 0x00490123 -- adjust this address to the mission unlock address
    writeInteger(missionUnlockAddress, 1)
end)

-- Add a cheat to unlock all weapons
local unlockWeapons = gameMenu.addCheckBox("Unlock All Weapons")
unlockWeapons:setHotkey("Ctrl+W")
unlockWeapons:setScript(function()
    local weaponUnlockAddress = 0x00456710 -- adjust this address to the weapon unlock address
    writeInteger(weaponUnlockAddress, 1)
end)

-- Add a submenu for visual cheats
local visualMenu = cheatMenu.addSubMenu("Visual")

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