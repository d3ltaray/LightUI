-- PVE Frame skin.
local function skin_Blizzard_PVEFrame()
    -- Иконки категорий вкладки.
    _G.GroupFinderFrame.groupButton1.icon:SetTexture([[Interface\Icons\INV_Helmet_08]])
    _G.GroupFinderFrame.groupButton2.icon:SetTexture([[Interface\LFGFrame\UI-LFR-PORTRAIT]])
    _G.GroupFinderFrame.groupButton3.icon:SetTexture([[Interface\Icons\Icon_Scenarios]])
    -- Размеры
    _G.GroupFinderFrame.groupButton1.icon:SetSize(46,46)
    _G.GroupFinderFrame.groupButton2.icon:SetSize(46,46)
    _G.GroupFinderFrame.groupButton3.icon:SetSize(46,46)
    -- Границы
    ui_CreateBorder(GroupFinderFrame.groupButton1,50,50,"LEFT",11,-1,14,"MEDIUM")
    ui_CreateBorder(GroupFinderFrame.groupButton2,50,50,"LEFT",11,-1,14,"MEDIUM")
    ui_CreateBorder(GroupFinderFrame.groupButton3,50,50,"LEFT",11,-1,14,"MEDIUM")
end

local HelloWorld = CreateFrame("Frame")
HelloWorld:RegisterEvent("PLAYER_LOGIN")
HelloWorld:SetScript("OnEvent", skin_Blizzard_PVEFrame)