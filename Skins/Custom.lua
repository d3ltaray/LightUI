-- Custom skins for addons.
local skinAddons = {
    ["iPMythicTimer"] = function()

    end
}

local f = CreateFrame("Frame")
f:RegisterEvent("ADDON_LOADED")
f:RegisterEvent("PLAYER_ENTERING_WORLD")
f:SetScript("OnEvent", function(_, event, addon)
    if event == "PLAYER_ENTERING_WORLD" then
        if event == "ADDON_LOADED" then
            if skinAddons[addon] then
                skinAddons[addon]()
                skinAddons[addon] = nil
            end
        else
            for addon, func in pairs(skinAddons) do
                if IsAddOnLoaded(addon) then
                    func()
                end
            end
        end
    end
end)