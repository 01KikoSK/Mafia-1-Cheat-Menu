-- Create a trainer
local trainer = {}

-- Add a function to give the player infinite health
function trainer.giveInfiniteHealth()
    local healthAddress = 0x00412345 -- adjust this address to the player health address
    writeInteger(healthAddress, 9999)
end

-- Add a function to give the player infinite ammo
function trainer.giveInfiniteAmmo()
    local ammoAddress = 0x00456789 -- adjust this address to the player ammo address
    writeInteger(ammoAddress, 9999)
end

-- Add a function to give the player infinite money
function trainer.giveInfiniteMoney()
    local moneyAddress = 0x00490123 -- adjust this address to the player money address
    writeInteger(moneyAddress, 999999)
end

-- Add a function to unlock all weapons
function trainer.unlockAllWeapons()
    local weaponUnlockAddress = 0x00412367 -- adjust this address to the weapon unlock address
    writeInteger(weaponUnlockAddress, 1)
end

-- Add a function to unlock all cars
function trainer.unlockAllCars()
    local carUnlockAddress = 0x00456798 -- adjust this address to the car unlock address
    writeInteger(carUnlockAddress, 1)
end

-- Add a function to toggle noclip
function trainer.toggleNoclip()
    local noclipAddress = 0x00412367 -- adjust this address to the noclip address
    local noclipValue = readInteger(noclipAddress)
    if noclipValue == 0 then
        writeInteger(noclipAddress, 1)
    else
        writeInteger(noclipAddress, 0)
    end
end

-- Add a function to toggle infinite sprint
function trainer.toggleInfiniteSprint()
    local sprintAddress = 0x00456789 -- adjust this address to the sprint address
    local sprintValue = readInteger(sprintAddress)
    if sprintValue == 0 then
        writeInteger(sprintAddress, 1)
    else
        writeInteger(sprintAddress, 0)
    end
end

-- Create a hotkey for each function
hotkey.bind("F1", trainer.giveInfiniteHealth)
hotkey.bind("F2", trainer.giveInfiniteAmmo)
hotkey.bind("F3", trainer.giveInfiniteMoney)
hotkey.bind("F4", trainer.unlockAllWeapons)
hotkey.bind("F5", trainer.unlockAllCars)
hotkey.bind("F6", trainer.toggleNoclip)
hotkey.bind("F7", trainer.toggleInfiniteSprint)

-- Print a message to the console when the script is loaded
print("Mafia: The City of Lost Heaven Trainer Loaded")