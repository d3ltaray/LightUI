
local ADDON, Addon = ...
PhanxFontDB = {
    normal = "Lato",
    bold   = "Lato",
    scale  = 1,
}
local NORMAL       = [[Interface\AddOns\LightUI\Media\Fonts\AvantGardeCTT.ttf]]
local BOLD         = [[Interface\AddOns\LightUI\Media\Fonts\AvantGardeCTT.ttf]]
local BOLDITALIC   = NORMAL
local ITALIC       = NORMAL
local NUMBER       = NORMAL
------------------------------------------------------------------------
local function SetFont(obj, font, size, style, r, g, b, sr, sg, sb, sox, soy)
    if not obj then return end
    obj:SetFont(font, floor(size * PhanxFontDB.scale + 0.5), style)
    if sr and sg and sb then
        obj:SetShadowColor(sr, sg, sb)
    end
    if sox and soy then
        obj:SetShadowOffset(sox, soy)
    end
    if r and g and b then
        obj:SetTextColor(r, g, b)
    elseif r then
        obj:SetAlpha(r)
    end
end
function Addon:SetFonts(event, addon)
    NORMAL     = LibStub("LibSharedMedia-3.0"):Fetch("font", PhanxFontDB.normal)
    BOLD       = LibStub("LibSharedMedia-3.0"):Fetch("font", PhanxFontDB.bold)
    BOLDITALIC = NORMAL
    ITALIC     = NORMAL
    NUMBER     = NORMAL
    UNIT_NAME_FONT     = NORMAL
    NAMEPLATE_FONT     = NORMAL
    DAMAGE_TEXT_FONT   = NORMAL
    STANDARD_TEXT_FONT = NORMAL

    -----------------------(OUTLINE)-----------------------------
    SetFont(DestinyFontLarge,NORMAL,17,"OUTLINE",nil,nil,nil,0,0,0,0,0)
    SetFont(Game15Font_o1,NORMAL,14,"OUTLINE",nil,nil,nil,0,0,0,0,0)
    SetFont(Game18Font,NORMAL,17,"OUTLINE",nil,nil,nil,0,0,0,0,0)
    SetFont(Game27Font,NORMAL,26,"OUTLINE",nil,nil,nil,0,0,0,0,0)
    SetFont(Game30Font,NORMAL,29,"OUTLINE",nil,nil,nil,0,0,0,0,0)
    SetFont(Game32Font,NORMAL,31,"OUTLINE",nil,nil,nil,0,0,0,0,0)
    SetFont(GameFont_Gigantic,NORMAL,31,"OUTLINE",nil,nil,nil,0,0,0,0,0)
    SetFont(NumberFont_GameNormal,NORMAL,9,"OUTLINE",nil,nil,nil,0,0,0,0,0)
    SetFont(NumberFont_Normal_Med,NORMAL,13,"OUTLINE",nil,nil,nil,0,0,0,0,0)
    SetFont(NumberFont_Outline_Huge,NORMAL,29,"OUTLINE",nil,nil,nil,0,0,0,0,0)
    SetFont(NumberFont_Outline_Large,NORMAL,16,"OUTLINE",nil,nil,nil,0,0,0,0,0)
    SetFont(NumberFont_Outline_Med,NORMAL,15,"OUTLINE",nil,nil,nil,0,0,0,0,0)
    SetFont(NumberFont_OutlineThick_Mono_Small,NORMAL,12,"OUTLINE",nil,nil,nil,0,0,0,0,0)
    SetFont(NumberFont_Shadow_Med,NORMAL,13,"OUTLINE",nil,nil,nil,0,0,0,0,0)
    SetFont(NumberFont_Shadow_Small,NORMAL,11,"OUTLINE",nil,nil,nil,0,0,0,0,0)
    SetFont(NumberFont_GameNormal,NORMAL,12,"OUTLINE",nil,nil,nil,0,0,0,0,0)
    SetFont(QuestFont_Super_Huge_Outline,NORMAL,23,"OUTLINE",nil,nil,nil,0,0,0,0,0)
    SetFont(ReputationDetailFont,NORMAL,11,"OUTLINE",nil,nil,nil,0,0,0,0,0)
    SetFont(SystemFont_Huge1_Outline,NORMAL,19,"OUTLINE",nil,nil,nil,0,0,0,0,0)
    SetFont(SystemFont_InverseShadow_Small,NORMAL,10,"OUTLINE",nil,nil,nil,0,0,0,0,0)
    SetFont(SystemFont_Outline,NORMAL,12,"OUTLINE",nil,nil,nil,0,0,0,0,0)
    SetFont(SystemFont_Outline_Small,NORMAL,12,"OUTLINE",nil,nil,nil,0,0,0,0,0)
    SetFont(SystemFont_OutlineThick_Huge2,NORMAL,21,"OUTLINE",nil,nil,nil,0,0,0,0,0)
    SetFont(SystemFont_OutlineThick_Huge4,NORMAL,26,"OUTLINE",nil,nil,nil,0,0,0,0,0)
    SetFont(SystemFont_OutlineThick_WTF,NORMAL,30,"OUTLINE",nil,nil,nil,0,0,0,0,0)
    SetFont(SystemFont_OutlineThick_WTF2,NORMAL,35,"OUTLINE",nil,nil,nil,0,0,0,0,0)
    SetFont(SystemFont_Shadow_Huge1,NORMAL,20,"OUTLINE",nil,nil,nil,0,0,0,0,0)
    SetFont(SystemFont_Shadow_Huge2,NORMAL,23,"OUTLINE",nil,nil,nil,0,0,0,0,0)
    SetFont(SystemFont_Shadow_Huge3,NORMAL,24,"OUTLINE",nil,nil,nil,0,0,0,0,0)
    SetFont(SystemFont_Shadow_Large,NORMAL,16,"OUTLINE",nil,nil,nil,0,0,0,0,0)
    SetFont(SystemFont_Shadow_Large2,NORMAL,18,"OUTLINE",nil,nil,nil,0,0,0,0,0)
    SetFont(SystemFont_Shadow_Large_Outline,NORMAL,16,"OUTLINE",nil,nil,nil,0,0,0,0,0)
    SetFont(SystemFont_Shadow_Med1, NORMAL,12,"OUTLINE",nil,nil,nil,0,0,0,0,0)
    SetFont(SystemFont_Shadow_Med_Outline,NORMAL,12,"OUTLINE",nil,nil,nil,0,0,0,0,0)
    SetFont(SystemFont_Shadow_Med2,NORMAL,13,"OUTLINE",nil,nil,nil,0,0,0,0,0)
    SetFont(SystemFont_Shadow_Med3,NORMAL,14,"OUTLINE",nil,nil,nil,0,0,0,0,0)
    SetFont(SystemFont_Shadow_Outline_Huge2,NORMAL,21,"OUTLINE",nil,nil,nil,0,0,0,0,0)
    SetFont(SystemFont_Shadow_Small,NORMAL,10,"OUTLINE",nil,nil,nil,0,0,0,0,0)
    SetFont(SystemFont_Shadow_Small2,NORMAL,10,"OUTLINE",nil,nil,nil,0,0,0,0,0)
    SetFont(BossEmoteNormalHuge,NORMAL,26,"OUTLINE",nil,nil,nil,0,0,0,0,0)
    SetFont(CombatTextFont,NORMAL,25,"OUTLINE",nil,nil,nil,0,0,0,0,0)
    SetFont(WorldMapTextFont,NORMAL,30,"OUTLINE",nil,nil,nil,0,0,0,0,0)
    SetFont(ZoneTextFont,NORMAL,30,"OUTLINE",nil,nil,nil,0,0,0,0,0)
    SetFont(SubZoneTextFont,NORMAL,26,"OUTLINE",nil,nil,nil,0,0,0,0,0)
    SetFont(PVPInfoTextFont,NORMAL,21,"OUTLINE",nil,nil,nil,0,0,0,0,0)
    ----------------(IMPORTANT)-------------------------
    SetFont(ErrorFont,NORMAL,14,"OUTLINE",nil,nil,nil,0,0,0,0,0)
    SetFont(ChatBubbleFont,NORMAL,10,"OUTLINE",nil,nil,nil,0,0,0,0,0)
    SetFont(SystemFont_NamePlate,NORMAL,10,"OUTLINE",nil,nil,nil,0,0,0,0,0)
    SetFont(SystemFont_LargeNamePlateFixed,NORMAL,10,"OUTLINE",nil,nil,nil,0,0,0,0,0)
    SetFont(SystemFont_NamePlateFixed,NORMAL,10,"OUTLINE",nil,nil,nil,0,0,0,0,0)
    SetFont(CoreAbilityFont,NORMAL,31,"OUTLINE",nil,nil,nil,0,0,0,0,0)
    SetFont(DestinyFontHuge,NORMAL,31,nil,nil,nil,nil,0,0,0,0,0)
    SetFont(QuestFont_Super_Huge,NORMAL,23,"OUTLINE",nil,nil,nil,0,0,0,0,0)
    SetFont(QuestFont_Enormous,NORMAL,29,"OUTLINE",nil,nil,nil,0,0,0,0,0)
    SetFont(Game24Font,NORMAL,23,"OUTLINE",nil,nil,nil,0,0,0,0,0)
    -------------------------(CHECKED)--------------------------
    SetFont(QuestFontNormalSmall,NORMAL,12)
    SetFont(SystemFont_Large,NORMAL,16)
    SetFont(SystemFont_Med1,NORMAL,12,"OUTLINE",nil,nil,nil,0,0,0,0,0)
    SetFont(SystemFont_Med2,NORMAL,13)
    SetFont(SystemFont_Med3,NORMAL,14)
    SetFont(Tooltip_Small,NORMAL,11)
    SetFont(Tooltip_Med,NORMAL,14)
    --------------------------(TO CHECK)-------------------------
    SetFont(SystemFont_Small,NORMAL,11)
    SetFont(SystemFont_Small2,NORMAL,11)
    SetFont(SystemFont_Tiny,NORMAL,10)
    SetFont(SpellFont_Small,NORMAL,10)
    SetFont(SplashHeaderFont,NORMAL,23)
    SetFont(SystemFont_Huge1,NORMAL,19)
    SetFont(QuestFont_Shadow_Huge,NORMAL,18)
    SetFont(QuestFont_Shadow_Small,NORMAL,15)
    SetFont(QuestFont_Huge,NORMAL,18)
    SetFont(QuestFont_Large,NORMAL,15)
    SetFont(GameTooltipHeader,NORMAL,14)
    SetFont(InvoiceFont_Med,NORMAL,12)
    SetFont(InvoiceFont_Small,NORMAL,10)
    SetFont(MailFont_Large,NORMAL,14)
    SetFont(FriendsFont_Large,NORMAL,14)
    SetFont(FriendsFont_Normal,NORMAL,12)
    SetFont(FriendsFont_Small,NORMAL,10)
    SetFont(FriendsFont_UserText,NORMAL,11)
    SetFont(AchievementFont_Small,NORMAL,12)
    --------------------------------------------------------------
end



local f = CreateFrame("Frame", "PhanxFont")
f:RegisterEvent("ADDON_LOADED")
f:SetScript("OnEvent", function(self, event, addon)
    UIDROPDOWNMENU_DEFAULT_TEXT_HEIGHT = 13
    CHAT_FONT_HEIGHTS = { 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24 }
    Addon:SetFonts()
    for _, button in pairs(PaperDollTitlesPane.buttons) do
        button.text:SetFontObject(GameFontHighlightSmallLeft)
    end
end)BattlePetTooltip.Name:SetFontObject(GameTooltipHeaderText)
LFGListFrame.CategorySelection.CategoryButtons[1].Label:SetFontObject(GameFontNormal)
WorldMapFrameHomeButtonText:SetFontObject(GameFontNormal)


hooksecurefunc("FCF_SetChatWindowFontSize", function(self, frame, size)
    if not frame then
        frame = FCF_GetCurrentChatFrame()
    end
    if not size then
        size = self.value
    end
    -- Set all the other frames to the same size.
    for i = 1, 10 do
        local f = _G["ChatFrame"..i]
        if f then
            f:SetFont(NORMAL, size)
            SetChatWindowSize(i, size)
        end
    end
    -- Set the language override fonts to the same size.
    for _, f in pairs({
        ChatFontNormalKO,
        ChatFontNormalRU,
        ChatFontNormalZH,
    }) do
        local font, _, outline = f:GetFont()
        f:SetFont(font, size, outline)
    end
end)
hooksecurefunc("BattlePetToolTip_Show", function()
    BattlePetTooltip:SetHeight(BattlePetTooltip:GetHeight() + 12)
end)
hooksecurefunc("FloatingBattlePet_Show", function()
    FloatingBattlePetTooltip:SetHeight(FloatingBattlePetTooltip:GetHeight() + 12)
end)

