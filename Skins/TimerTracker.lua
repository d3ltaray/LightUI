-- Timer tracker.

local function SkinIt(bar)
    for i = 1, bar:GetNumRegions() do
        local region = select(i, bar:GetRegions())
        if region:GetObjectType() == "Texture" then
            region:SetTexture(nil)
        elseif region:GetObjectType() == "FontString" then
            region:SetShadowOffset(0, 0)
        end
    end

    bar:SetStatusBarTexture(normTex)
    bar:SetStatusBarColor(0.7, 0, 0)

    bar.bg = bar:CreateTexture(nil, "BACKGROUND")
    bar.bg:SetAllPoints(bar)
    bar.bg:SetTexture(normTex)
    bar.bg:SetVertexColor(0, 0, 0, 0.5)
    ui_CreateBorder(bar,bar:GetWidth()+5,bar:GetHeight()+3,"CENTER",0,0,14,"HIGH")
end

local function SkinBlizzTimer()
    for _, b in pairs(TimerTracker.timerList) do
        if b["bar"] and not b["bar"].skinned then
            SkinIt(b["bar"])
            b["bar"].skinned = true
        end
    end
end

local frame = CreateFrame("Frame")
frame:RegisterEvent("START_TIMER")
frame:SetScript("OnEvent", SkinBlizzTimer)