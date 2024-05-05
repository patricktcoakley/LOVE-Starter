if arg[2] == "debug" then
    require("lldebugger").start()
end

function love.load()

end

function love.update()
    if love.keyboard.isDown("escape") then
        love.event.quit()
    end
end

function love.draw()

end

local love_errorhandler = love.errorhandler

function love.errorhandler(msg)
    if lldebugger then
        return error(msg, 2)
    end

    return love_errorhandler(msg)
end
