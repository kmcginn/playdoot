local gfx <const> = playdate.graphics

local function loadGame()
    playdate.display.setRefreshRate(50) -- Sets framerate to 50 fps
    math.randomseed(playdate.getSecondsSinceEpoch()) -- seed for math.random
end

local function updateGame()
end

local function drawGame()
    gfx.clear() -- Clears the screen
end

loadGame()

function playdate.update()
    updateGame()
    drawGame()
    playdate.drawFPS(0,0) -- FPS widget
end