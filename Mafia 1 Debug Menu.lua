-- Create a debug menu
local debugMenu = menu.addMenu("Mafia Debug")

-- Add a submenu for game debugging
local gameMenu = debugMenu.addSubMenu("Game Debugging")

-- Add a cheat to toggle debug mode
local debugMode = gameMenu.addCheckBox("Debug Mode")
debugMode:setHotkey("Ctrl+D")
debugMode:setScript(function()
    local debugModeAddress = 0x00412345 -- adjust this address to the debug mode address
    writeInteger(debugModeAddress, 1)
end)

-- Add a cheat to toggle AI debugging
local aiDebug = gameMenu.addCheckBox("AI Debugging")
aiDebug:setHotkey("Ctrl+A")
aiDebug:setScript(function()
    local aiDebugAddress = 0x00456789 -- adjust this address to the AI debugging address
    writeInteger(aiDebugAddress, 1)
end)

-- Add a cheat to toggle physics debugging
local physicsDebug = gameMenu.addCheckBox("Physics Debugging")
physicsDebug:setHotkey("Ctrl+P")
physicsDebug:setScript(function()
    local physicsDebugAddress = 0x00490123 -- adjust this address to the physics debugging address
    writeInteger(physicsDebugAddress, 1)
end)

-- Add a submenu for rendering debugging
local renderMenu = debugMenu.addSubMenu("Rendering Debugging")

-- Add a cheat to toggle wireframe mode
local wireframe = renderMenu.addCheckBox("Wireframe Mode")
wireframe:setHotkey("Ctrl+F")
wireframe:setScript(function()
    local wireframeAddress = 0x00456798 -- adjust this address to the wireframe mode address
    writeInteger(wireframeAddress, 1)
end)

-- Add a cheat to toggle bounding box rendering
local boundingBox = renderMenu.addCheckBox("Bounding Box Rendering")
boundingBox:setHotkey("Ctrl+B")
boundingBox:setScript(function()
    local boundingBoxAddress = 0x00412367 -- adjust this address to the bounding box rendering address
    writeInteger(boundingBoxAddress, 1)
end)

-- Add a submenu for audio debugging
local audioMenu = debugMenu.addSubMenu("Audio Debugging")

-- Add a cheat to toggle audio logging
local audioLog = audioMenu.addCheckBox("Audio Logging")
audioLog:setHotkey("Ctrl+L")
audioLog:setScript(function()
    local audioLogAddress = 0x00456710 -- adjust this address to the audio logging address
    writeInteger(audioLogAddress, 1)
end)

-- Add a cheat to toggle audio debugging
local audioDebug = audioMenu.addCheckBox("Audio Debugging")
audioDebug:setHotkey("Ctrl+D")
audioDebug:setScript(function()
    local audioDebugAddress = 0x00490134 -- adjust this address to the audio debugging address
    writeInteger(audioDebugAddress, 1)
end)