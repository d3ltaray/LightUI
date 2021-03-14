local function skinAddonList()
    -- Buttons border
    local cancelBwidth = AddonListCancelButton:GetWidth()
    local cancelBheight = AddonListCancelButton:GetHeight()

    local okayBwidth = AddonListOkayButton:GetWidth()
    local okayBheight = AddonListOkayButton:GetHeight()

    local enableAll_width= AddonListEnableAllButton:GetWidth()
    local enableAll_height = AddonListEnableAllButton:GetHeight()

    local disableAll_width= AddonListDisableAllButton:GetWidth()
    local disableAll_height = AddonListDisableAllButton:GetHeight()

    ui_CreateBorder(AddonListCancelButton,cancelBwidth-2,cancelBheight-1,"CENTER",0,0,14,"HIGH")
    ui_CreateBorder(AddonListOkayButton,okayBwidth-2,okayBheight-1,"CENTER",0,0,14,"HIGH")
    ui_CreateBorder(AddonListEnableAllButton,enableAll_width-2,enableAll_height-1,"CENTER",0,0,14,"HIGH")
    ui_CreateBorder(AddonListDisableAllButton,disableAll_width-2,disableAll_height-1,"CENTER",0,0,14,"HIGH")
end

local catchF = CreateFrame("Frame")
catchF:RegisterEvent("PLAYER_LOGIN")
catchF:SetScript("OnEvent", skinAddonList)