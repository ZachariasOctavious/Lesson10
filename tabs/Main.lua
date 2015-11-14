-- Main
-- Lesson10

-- Created by: Zacharias Octavious 
-- Created on: Nov - 2015
-- Created for: ICS2O
-- This is the main starting point 

--global variables
topScore = nil
healthPoints = nil

-- Use this function to perform your initial setup
function setup()
    
    supportedOrientations(LANDSCAPE_ANY)
    --displayMode(FULLSCREEN)
    noFill()
    noSmooth()
    noStroke()
    pushStyle()
    
    topScore = readLocalData("highScore", 0)
    healthPoints = 3
    
    -- create the scenes
    Scene("splash", SplashScreenScene)
    Scene("play", MainScene)
    Scene("endGame", GameOverScene)
    
    Scene.Change("splash")
end

-- This function gets called once every frame
function draw()
    -- This sets a dark background color 
    background(40, 40, 50)
    
    Scene.Draw()
end

function touched(touch)
    
    Scene.Touched(touch)
end