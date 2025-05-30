local Class = require "libs.hump.class"

-- Check paths
local obstacleSprite = love.graphics.newImage("/graphics/obj/towtruck.png")


local Obstacle = Class{}

function Obstacle:init(x, y, speed)
    self.x = x
    self.y = y
    self.image = obstacleSprite
    self.speed = speed or 100
end

function Obstacle:update(dt)
    self.x = self.x - self.speed * dt
end

function Obstacle:draw()
    love.graphics.draw(self.image, self.x + self.image:getWidth(), self.y, 0, -1, 1)
end

return Obstacle