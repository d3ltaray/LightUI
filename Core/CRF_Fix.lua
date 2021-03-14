-----------------------------PART1------------------
CompactRaidFrameContainer:UnregisterAllEvents()
CompactRaidFrameContainer:SetScript("OnEvent", nil)
CompactRaidFrameContainer:SetScript("OnSizeChanged", nil)
CompactRaidFrameContainer:Hide()

CompactRaidFrameManager:UnregisterAllEvents()
CompactRaidFrameManager:SetScript("OnEvent", nil)
CompactRaidFrameManager:Hide()
---------------------------PART2------------------
-- Remove the cancel button
InterfaceOptionsFrameCancel:Hide()
InterfaceOptionsFrameOkay:SetAllPoints(InterfaceOptionsFrameCancel)

-- Make clicking cancel the same as clicking okay
InterfaceOptionsFrameCancel:SetScript("OnClick", function()
    InterfaceOptionsFrameOkay:Click()
end)
-----------------------------PART3------------------
local buttons = InterfaceOptionsFrameCategories.buttons
for i = 1, #buttons do
    buttons[i]:SetDisabledFontObject(GameFontDisable)
end
hooksecurefunc("InterfaceCategoryList_Update", function()
    for i = 1, #buttons do
        buttons[i]:SetEnabled(buttons[i]:GetText() ~= COMPACT_UNIT_FRAME_PROFILES_LABEL)
    end
end)
-----------------------------PART4------------------
local function HideSafely(f) if not InCombatLockdown() then f:Hide() end
    CompactRaidFrameContainer:HookScript("OnShow", HideSafely)
    CompactRaidFrameManager:HookScript("OnShow", HideSafely)
end