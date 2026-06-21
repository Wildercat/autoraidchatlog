local addonName = ...
local frame = CreateFrame("Frame")
local targetRaidName = "March on Quel'Danas"
local targetRaidInstanceID = 2913
local wasInTargetRaid = false
local initialized = false

local function Print(message)
    DEFAULT_CHAT_FRAME:AddMessage("|cff33ff99" .. addonName .. ":|r " .. message)
end

local function IsChatLoggingEnabled()
    return LoggingChat()
end

local function IsInTargetRaid()
    local _, instanceType, _, _, _, _, _, instanceID = GetInstanceInfo()
    return instanceType == "raid" and instanceID == targetRaidInstanceID
end

local function UpdateChatLogging()
    local isInTargetRaid = IsInTargetRaid()

    if isInTargetRaid and not wasInTargetRaid then
        if not IsChatLoggingEnabled() then
            LoggingChat(true)
        end
        Print("Chat logging enabled for " .. targetRaidName .. ".")
    elseif initialized and not isInTargetRaid and wasInTargetRaid then
        if IsChatLoggingEnabled() then
            LoggingChat(false)
        end
        Print("Chat logging disabled after leaving " .. targetRaidName .. ".")
    end

    wasInTargetRaid = isInTargetRaid
    initialized = true
end

frame:RegisterEvent("PLAYER_ENTERING_WORLD")
frame:RegisterEvent("ZONE_CHANGED_NEW_AREA")
frame:SetScript("OnEvent", UpdateChatLogging)

SLASH_AUTORAIDCHATLOG1 = "/raidchatlog"
SlashCmdList.AUTORAIDCHATLOG = function()
    local location = IsInTargetRaid() and ("inside " .. targetRaidName) or ("outside " .. targetRaidName)
    Print("Chat logging is " .. (IsChatLoggingEnabled() and "ON" or "OFF") .. "; you are " .. location .. ".")
end
