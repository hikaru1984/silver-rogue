
silver_settings = {}

silver_settings.screen_size = { x = 80, y = 50, tile = { w = 16, h = 20 }, border = 2 }

silver_settings.font = { size = 14 }

silver_settings.background_color = { 0, 0, 0 }

silver_settings.floor_color = { .08, .08, .08 }

silver_settings.playerch_color = { .74, .74, .74 }

function love.load()
    love.graphics.setBackgroundColor(silver_settings.background_color)
    love.graphics.setNewFont(silver_settings.font.size)
end

function silver_drawRoom(pos, rsize)
    for y = pos[2], pos[2] + rsize[2] do
        for x = pos[1], pos[1] + rsize[1] do
            love.graphics.setColor(silver_settings.floor_color)
            love.graphics.rectangle(
                'fill',
                x * silver_settings.screen_size.tile.w,
                y * silver_settings.screen_size.tile.h,
                silver_settings.screen_size.tile.w - silver_settings.screen_size.border,
                silver_settings.screen_size.tile.h - silver_settings.screen_size.border
            )
        end
    end
end

function silver_drawPlayerCh(pos)
    love.graphics.setColor(silver_settings.playerch_color)
    love.graphics.print(
        '@',
        pos[1] * silver_settings.screen_size.tile.w,
        pos[2] * silver_settings.screen_size.tile.h)
end

function love.draw()
    silver_drawRoom({ 22, 10 }, { 12, 8 })
    silver_drawPlayerCh({ 24, 12 })
end

