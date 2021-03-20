-- Функции, использующиеся в аддоне.
local function uiFunctions()
    -- Функция создания кастомной границы.
    function ui_CreateBorder(arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8)
        local FrameName
        if arg1:GetName() and _G["border_"..arg1:GetName()] then
            --print(arg1:GetName().." уже существует.")
        else
            if arg1:GetName() then
                FrameName = "border_"..arg1:GetName()
            else
                FrameName = "noname_border"
            end
            local border =  CreateFrame("Frame", FrameName or "noname_border", arg1,
                BackdropTemplateMixin and "BackdropTemplate")
            border:SetSize(arg2, arg3)
            border:SetPoint(arg4, arg5, arg6)
            border:SetBackdrop({
                edgeFile = "Interface\\Tooltips\\ui-tooltip-lightui-border.blp",
                edgeSize = arg7 })
            border:SetBackdropColor(1,1,1)
            border:SetFrameStrata(arg8)
        end
    end

    -- Функция проверяет наличие текстуры, если нужная текстура уже установлена, не устанавливает ее снова.
    function ui_SetTexture(arg1, arg2)
        if arg1:GetTexture() ~= arg2 then
            arg1:SetTexture(arg2)
        end
    end
    -- Функция для создания бекграундов.
    function ui_CreateBG(parent, size, offset, a)
        local frame = parent
        if parent:GetObjectType() == "Texture" then
            frame = parent:GetParent()
        end
        local lvl = frame:GetFrameLevel()

        local bg = CreateFrame("Frame", nil, frame, BackdropTemplateMixin and "BackdropTemplate")
        bg:ClearAllPoints()
        bg:SetPoint("TOPLEFT", parent, -size, size)
        bg:SetPoint("BOTTOMRIGHT", parent, size, -size)
        bg:SetFrameLevel(lvl == 0 and 0 or lvl - 1)
        bg:SetBackdrop({
            bgFile = "Interface\\Buttons\\WHITE8x8",
            tile = false,
            edgeFile = nil,	-- 陰影邊框
            edgeSize = offset,	-- 邊框大小
            insets = { left = offset, right = offset, top = offset, bottom = offset },
        })
        bg:SetBackdropColor(0, 0, 0, a)
        bg:SetBackdropBorderColor(0, 0, 0, 1)

        return bg
    end

end

local catchF = CreateFrame("Frame")
catchF:RegisterEvent("PLAYER_LOGIN")
catchF:SetScript("OnEvent", uiFunctions)