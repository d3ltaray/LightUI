-- Tooltips.lua

local function skinTooltip()
    -- Progress bars skin.
    hooksecurefunc("GameTooltip_ShowProgressBar", function(tt)
        if not tt or tt:IsForbidden() or not tt.progressBarPool then return end
        local frame = tt.progressBarPool:GetNextActive()
        if (not frame or not frame.Bar) or frame.Bar.backdrop then return end

        local bar = frame.Bar
        local label = bar.Label
        if bar then
            bar:DisableDrawLayer("BORDER")
            ui_CreateBG(bar, 2, 1, 1)
            label:ClearAllPoints()
            label:SetPoint("CENTER", bar, 0, 0)
            label:SetDrawLayer("OVERLAY")
        end
    end)
end

local HelloWorld = CreateFrame("Frame")
HelloWorld:RegisterEvent("PLAYER_LOGIN")
HelloWorld:SetScript("OnEvent", skinTooltip)