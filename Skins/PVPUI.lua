-- PVPUIFrame skin.
local function skin_Blizzard_PVPUI()
    -- Иконки категорий вкладки.
    PVPQueueFrame.CategoryButton1.Icon:SetTexture([[Interface\Icons\achievement_bg_winwsg]])
    PVPQueueFrame.CategoryButton2.Icon:SetTexture([[Interface\Icons\achievement_bg_killxenemies_generalsroom]])
    PVPQueueFrame.CategoryButton3.Icon:SetTexture([[Interface\Icons\Achievement_General_StayClassy]])
    -- Размеры.
    PVPQueueFrame.CategoryButton1.Icon:SetSize(46,46)
    PVPQueueFrame.CategoryButton2.Icon:SetSize(46,46)
    PVPQueueFrame.CategoryButton3.Icon:SetSize(46,46)
    -- Создаем границу у иконок.
    ui_CreateBorder(PVPQueueFrameCategoryButton1,50,50,"LEFT",11,-1,14,"MEDIUM")
    ui_CreateBorder(PVPQueueFrameCategoryButton2,50,50,"LEFT",11,-1,14,"MEDIUM")
    ui_CreateBorder(PVPQueueFrameCategoryButton3,50,50,"LEFT",11,-1,14,"MEDIUM")

    local BonusFrame = HonorFrame.BonusFrame
    -- Цикл убирает маску, которая не дает отображать иконку квадратом. Также создает границу иконке.
    for _, bonusButton in pairs({'RandomBGButton', 'Arena1Button', 'RandomEpicBGButton', 'SpecialEventButton'}) do
        local bu = BonusFrame[bonusButton]
        local reward = bu.Reward
        reward.Border:Hide()
        reward.CircleMask:Hide()
        reward.Icon:SetTexCoord(0.85, 0.15, 0.15, 0.85)
        ui_CreateBorder(bu,38,38,"RIGHT",-21,-1,14,"HIGH")
    end
    -- Работа с сезонной вкладкой (рейтинг пвп)
    for _, bu in pairs({ConquestFrame.Arena2v2, ConquestFrame.Arena3v3, ConquestFrame.RatedBG}) do
        local reward = bu.Reward
        reward.Border:Hide()
        reward.CircleMask:Hide()
        reward.Icon:SetTexCoord(0.85, 0.15, 0.15, 0.85)
        ui_CreateBorder(bu,38,38,"RIGHT",-21,-2,14,"HIGH")
    end

    local SeasonReward = PVPQueueFrame.HonorInset.RatedPanel.SeasonRewardFrame
    SeasonReward.Ring:Hide()
    SeasonReward.CircleMask:Hide()
    SeasonReward.Icon:SetTexCoord(0.85, 0.15, 0.15, 0.85)
    ui_CreateBorder(SeasonReward,44,44,"CENTER",0,0,14,"HIGH")

    local function ui_HonorFrameBonusFrame_Update()
        -- Если потасовка активна, скиним иконку награды.
        if BonusFrame.BrawlButton.Reward:IsShown() then
            BonusFrame.BrawlButton.Reward.CircleMask:Hide()
            BonusFrame.BrawlButton.Reward.Icon:SetTexCoord(0.85, 0.15, 0.15, 0.85)
            ui_CreateBorder(BonusFrame.BrawlButton,38,38,"RIGHT",-21,-1,14,"HIGH")
        end
    end

    hooksecurefunc("HonorFrameBonusFrame_Update",ui_HonorFrameBonusFrame_Update)
end

local catchaddon = CreateFrame("FRAME")
catchaddon:RegisterEvent("ADDON_LOADED")

--function to catch loading addons
local function skinnedOnLoad(_, _, addon)
    if addon == "Blizzard_PVPUI" then
        skin_Blizzard_PVPUI()
    end
end

--this function decides whether the addon is already loaded or if we need to look out for it!

local function skinnedOnLogin()
    if IsAddOnLoaded("Blizzard_PVPUI") then
        -- Addon is already loaded, procceed to skin!
        skin_Blizzard_PVPUI()
    else
        -- Addon is not loaded yet, procceed to look out for it!
        catchaddon:SetScript("OnEvent", skinnedOnLoad)
    end
end

local HelloWorld = CreateFrame("FRAME")
HelloWorld:RegisterEvent("PLAYER_ENTERING_WORLD")
HelloWorld:SetScript("OnEvent", skinnedOnLogin)