-- v1.0.7

-- Event function for playing sound on level up
-- Registers an event for when the player levels up and plays a sound file when the event is triggered.
-- The sound file is located in the addon folder.
local frame_a = CreateFrame("Frame")
frame_a:RegisterEvent("PLAYER_LEVEL_UP")
frame_a:SetScript("OnEvent", function(self, event, ...)
	PlaySoundFile("Interface\\Addons\\OSRSLU\\OSRSLU.ogg", "Master")
end)

-- Mute default level up sound
-- Registers an event for when the addon is loaded and mutes the default level up sound.
local frame_b = CreateFrame("Frame")
frame_b:RegisterEvent("ADDON_LOADED")
frame_b:SetScript("OnEvent", function(self, event, ...)
	MuteSoundFile(569593)
end)

-- Chat message
-- Registers an event for when the player logs in and prints a chat message.
-- The chat message informs the user that the addon will no longer receive updates and its functionality has been merged into another addon.
local frame_c = CreateFrame("Frame")
frame_c:RegisterEvent("PLAYER_LOGIN")
frame_c:SetScript("OnEvent", function(self, event, ...)
	if event == "PLAYER_LOGIN" then
		print("|cff767778OSRSLU - Old School Runescape Level Up!|r Will no longer be receiving updates. Functionality has been merged into |c2d4b92ffBLU - Better Level Up!|r. If you're a fan of my sound addons, |c2d4b92ffBLU - Better Level Up!|r is available from all addon provider websites. Thank you!")
	end
end)
