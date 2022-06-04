local gfx <const> = playdate.graphics
local snd <const> = playdate.sound

local maxLevel = 0.0

local function loadGame()
    playdate.display.setRefreshRate(50) -- Sets framerate to 50 fps
    math.randomseed(playdate.getSecondsSinceEpoch()) -- seed for math.random
    snd.micinput.startListening()
end

local levelNum

local function updateGame()
    
    levelNum = snd.micinput.getLevel()
    -- snd.micinput.stopListening()
    -- print(levelNum)
    if levelNum > maxLevel then
        maxLevel = levelNum
    end
end

local function drawGame()
    gfx.clear() -- Clears the screen
    local drawValue = maxLevel * 100
    gfx.drawText(drawValue, 10, 10)
end

loadGame()

function playdate.update()
    updateGame()
    drawGame()
    playdate.drawFPS(0,0) -- FPS widget
end