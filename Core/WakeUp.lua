-- WakeUp.lua
-- Crappy coding but it works just fine.
-- Plays the soundfile even if your sound effects are disabled (Master channel).
-- Have fun but don't tab too much.

local frame, events = CreateFrame("Frame", "wake_up"), {};

-- #######################################################
-- start of events
-- #######################################################

local SoundPath = "Interface\\AddOns\\LightUI\\Media\\Sounds\\wake_up.ogg"

-- party invite
function events:PARTY_INVITE_REQUEST(...)
    PlaySoundFile(SoundPath, "Master")
end

-- going to queue into lfg
function events:LFG_ROLE_CHECK_SHOW(...)
    PlaySoundFile(SoundPath, "Master")
end

-- lfg queue ready
function events:LFG_PROPOSAL_SHOW(...)
    PlaySoundFile(SoundPath, "Master")
end

-- readycheck
function events:READY_CHECK(...)
    PlaySoundFile(SoundPath, "Master")
end

-- rolecheck
function events:ROLE_POLL_BEGIN(...)
    PlaySoundFile(SoundPath, "Master")
end

-- summon request
function events:CONFIRM_SUMMON(...)
    PlaySoundFile(SoundPath, "Master")
end

-- resurrect request
function events:RESURRECT_REQUEST(...)
    PlaySoundFile(SoundPath, "Master")
end

-- bg queue ready
function events:UPDATE_BATTLEFIELD_STATUS(...)
    local bgstatus = GetBattlefieldStatus(1)
    if (bgstatus == "confirm") then
        PlaySoundFile(SoundPath, "Master")
    end
end

-- #######################################################
-- end of events
-- #######################################################

frame:SetScript("OnEvent", function(self, event, ...)
    events[event](self, ...);
end);
for k, v in pairs(events) do
    frame:RegisterEvent(k);
end