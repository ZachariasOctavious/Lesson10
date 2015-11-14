-- MainScene
-- Lesson10

-- Created by: Zacharias Octavious 
-- Created on: Nov - 2015
-- Created for: ICS2O
-- This is the second scene

MainScene = class()

--global to this file
local topScoreButton
local healthPointsButton

function MainScene:init()

    topScoreButton = Button("iOS Button Pack:Red Back Circle Button", vec2(WIDTH/2, HEIGHT/2))
    healthPointsButton = Button("iOS Button Pack:Green Back Circle Button", vec2(WIDTH/2, HEIGHT/2-200))
    
end

function MainScene:draw()
    -- Codea does not automatically call this method
    
    background(0, 129, 255, 255)
    topScoreButton:draw()
    healthPointsButton:draw()
    
    fill(255, 255, 255, 255)
    text("Top Score: " ..topScore, 100, 100)
    text("Health Points: " ..healthPoints, 100, 200)
end

function MainScene:touched(touch)
    -- Codea does not automatically call this method
    topScoreButton:touched(touch)
    healthPointsButton:touched(touch)
    
    if (topScoreButton.selected == true) then
        topScore = topScore + 1
        saveLocalData("highScore", topScore)
    end
    
    if (healthPointsButton.selected == true) then
        healthPoints = healthPoints - 1
        
        if (healthPoints <= 0) then
            Scene.Change("endGame")
        end
    end
end