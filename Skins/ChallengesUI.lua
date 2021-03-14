-- Скин М+ составляющей.
local function skin_Blizzard_ChallengesUI()
    local _,hideit = ChallengesFrame:GetRegions()
    hideit:Hide()

    hooksecurefunc(ChallengesFrame.WeeklyInfo,"SetUp",function(self)
        local affixes = C_MythicPlus.GetCurrentAffixes();
        if (affixes) then
            for i=1, #affixes do
                local frame = self.Child.Affixes[i];
                frame.Portrait:SetTexCoord(0.15, 0.85, 0.15, 0.85)
                ui_SetTexture(frame.Border,"Interface\\AddOns\\LightUI\\Media\\Textures\\affixborder.blp")
            end
        end
    end)

    ChallengesKeystoneFrame.SlotBG:Hide()
    ChallengesKeystoneFrame.KeystoneSlot.Texture:SetTexCoord(0.15, 0.85, 0.15, 0.85)
    ChallengesKeystoneFrame.KeystoneSlot:SetSize(67,67)
    ui_SetTexture(ChallengesKeystoneFrame.InstructionBackground,"Interface\\FrameGeneral\\UI-Background-Marble.BLP")
    ui_CreateBorder(ChallengesKeystoneFrame,378,64,"Bottom",0,78,14,"MEDIUM")
    ChallengesFrameInset.Bg:Hide()

    local function lightui_ChallengesKeystoneFrame()
        border_ChallengesKeystoneFrame:Show()
    end

    hooksecurefunc(ChallengesKeystoneFrame,"Reset",lightui_ChallengesKeystoneFrame)

    local function lightui_ChallengesKeystoneFrame(self)
        border_ChallengesKeystoneFrame:Hide()
        local _,affixes = C_ChallengeMode.GetSlottedKeystoneInfo()
        if #affixes > 0 then
            for i = 1, #affixes+2 do
                ui_SetTexture(self.Affixes[i].Border,"Interface\\AddOns\\LightUI\\Media\\Textures\\affixborder.blp")
                self.Affixes[i].Portrait:SetTexCoord(0.15, 0.85, 0.15, 0.85)
            end
        end
    end

    hooksecurefunc(ChallengesKeystoneFrame,"OnKeystoneSlotted",lightui_ChallengesKeystoneFrame)
end

local catchaddon = CreateFrame("FRAME")
catchaddon:RegisterEvent("ADDON_LOADED")

--Функция для отслеживания загрузки аддона.
local function skinnedOnLoad(_, _, addon)
    if addon == "Blizzard_ChallengesUI" then
        skin_Blizzard_ChallengesUI()
    end
end

-- Функция проверяет, загружен ли аддон или нам нужно ждать.

local function skinnedOnLogin()
    if IsAddOnLoaded("Blizzard_ChallengesUI") then
        -- Аддон загружен, можно скинить.
        skin_Blizzard_ChallengesUI()
    else
        -- Аддон не загружен, продолжаем следить.
        catchaddon:SetScript("OnEvent", skinnedOnLoad)
    end
end

local HelloWorld = CreateFrame("FRAME")
HelloWorld:RegisterEvent("PLAYER_ENTERING_WORLD")
HelloWorld:SetScript("OnEvent", skinnedOnLogin)