-- SharedMedia.lua

local LSM = LibStub("LibSharedMedia-3.0")
local westAndRU = LSM.LOCALE_BIT_ruRU + LSM.LOCALE_BIT_western

local MediaKey = {
    background = LSM.MediaType.BACKGROUND,
    border = LSM.MediaType.BORDER,
    font = LSM.MediaType.FONT,
    statusbar = LSM.MediaType.STATUSBAR
}

local MediaPath = {
    font = [[Interface\Addons\LightUI\Media\Fonts\]],
    sound = [[Interface\Addons\LightUI\Media\Sounds\]],
    texture = [[Interface\Addons\LightUI\Media\Textures\]]
}

-- -----
--  BORDER
-- ----
LSM:Register(MediaKey['border'], "Black Border", MediaPath['texture'] .. "blackborder.blp")
LSM:Register(MediaKey['statusbar'], "LightUI Norm", MediaPath['texture'] .. "NormTex2.tga")
LSM:Register(MediaKey['statusbar'], "LightUI Blank", MediaPath['texture'] .. "White8x8.tga")
LSM:Register(MediaKey['background'], "LightUI Blank", MediaPath['texture'] .. "White8x8.tga")