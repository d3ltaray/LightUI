-- LightUI.lua
local LSM = LibStub("LibSharedMedia-3.0")

-- Chat edit box fix
UIParent:UnregisterEvent("GLOBAL_MOUSE_DOWN")

-- Extra button hide
ExtraActionButton1.style:SetAlpha(0)
ExtraActionButton1.style:Hide()

-- CVars on login
SetCVar("nameplateShowOnlyNames", 1)
SetCVar("cameraDistanceMaxZoomFactor",2.6)
SetCVar("scriptProfile",0)
SetCVar("scriptErrors",0)

-- Talking head disable
local function HookTalkingHead()
    hooksecurefunc("TalkingHeadFrame_PlayCurrent", function()
        TalkingHeadFrame:Hide()
    end)
end
if TalkingHeadFrame then
    HookTalkingHead()
else
    hooksecurefunc('TalkingHead_LoadUI', HookTalkingHead)
end

-- Some global vars for textures
normTex = LSM:Fetch('statusbar', 'LightUI Norm')
blankTex = [[Interface\AddOns\LightUI\Media\Textures\White8x8.tga]]