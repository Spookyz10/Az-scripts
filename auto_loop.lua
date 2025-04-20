print("started")
local running = false
local currentGrassType = nil

local function grass(grassType)
    if running then return end -- prevent multiple loops
    running = true
    currentGrassType = grassType

    while running do
        local args1 = {}

        if currentGrassType == "grass" then
            args1 = {
                [1] = {
                    ["id"] = "cut",
                    ["identifier"] = "pw8",
                    ["quantity"] = 10,
                    ["field"] = "main"
                }
            }

        elseif currentGrassType == "anti" then
           args1 = {
                [1] = {
                    ["id"] = "cut",
                    ["identifier"] = "pw8",
                    ["quantity"] = 100,
                    ["field"] = "anti"
                }
            }

        elseif currentGrassType == "un" then
            args1 = {
                [1] = {
                    ["id"] = "cut",
                    ["identifier"] = "pw8",
                    ["quantity"] = 100,
                    ["field"] = "un"
                }
            }

        elseif currentGrassType == "planet" then
            args1 = {
                [1] = {
                    ["id"] = "cut",
                    ["identifier"] = "pw8",
                    ["quantity"] = 100,
                    ["field"] = "planet"
                }
            }

        elseif currentGrassType == "obs" then
            args1 = {
                [1] = {
                    ["id"] = "cut",
                    ["identifier"] = "observatorium",
                    ["quantity"] = 1,
                    ["field"] = "planet"
                }
            }
        end

        if #args1 > 0 then
            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericFunction"):InvokeServer(unpack(args1))
        end

        task.wait()
    end
end

local function stopGrass()
    running = false
end

local function switchGrass(grassType)
    stopGrass()
    task.wait(0.1) -- tiny delay to ensure the last loop exits
    task.spawn(function()
        grass(grassType)
    end)
end

local args = {}

switchGrass("grass")

wait(3)
args = {
    [1] = "prestige"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TriggerReset"):FireServer(unpack(args))
wait(3)
args = {
    [1] = "crystallize"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TriggerReset"):FireServer(unpack(args))
wait(4)
args = {
    [1] = "grasshop"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TriggerReset"):FireServer(unpack(args))
wait(3)
args = {
    [1] = "steelie"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TriggerReset"):FireServer(unpack(args))
wait(3)
args = {
    [1] = "steelie"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TriggerReset"):FireServer(unpack(args))
wait(2)
args = {
    [1] = "rocketPart"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TriggerReset"):FireServer(unpack(args))
wait(2)
args = {
    [1] = "galactic"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TriggerReset"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "mapTeleport",
        ["teleId"] = "field"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(7)
args = {
    [1] = "rocketPart"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TriggerReset"):FireServer(unpack(args))
wait(2)
args = {
    [1] = "galactic"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TriggerReset"):FireServer(unpack(args))
wait(7)
switchGrass("anti")
wait(2)
args = {
    [1] = {
        ["id"] = "mapTeleport",
        ["teleId"] = "anti"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(2)
args = {
    [1] = "grassskip"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TriggerReset"):FireServer(unpack(args))
wait(5)
args = {
    [1] = "grassskip"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TriggerReset"):FireServer(unpack(args))
wait(3)
args = {
    [1] = "funify"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TriggerReset"):FireServer(unpack(args))
wait(2)
args = {
    [1] = {
        ["id"] = "mapTeleport",
        ["teleId"] = "industrial"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = "rocketPart"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TriggerReset"):FireServer(unpack(args))
wait(1)
args = {
    [1] = "galactic"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TriggerReset"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "mapTeleport",
        ["teleId"] = "field"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(3)
args = {
    [1] = "autoGrasshop",
    [2] = "setting"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Toggle"):FireServer(unpack(args))
wait(1)
args = {
    [1] = "galactic"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TriggerReset"):FireServer(unpack(args))
wait(2)
args = {
    [1] = {
        ["id"] = "mapTeleport",
        ["teleId"] = "field"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(5)
args = {
    [1] = "rocketPart"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TriggerReset"):FireServer(unpack(args))
wait(3)
args = {
    [1] = {
        ["id"] = "mapTeleport",
        ["teleId"] = "anti"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(15)
args = {
    [1] = {
        ["id"] = "mapTeleport",
        ["teleId"] = "field"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = "galactic"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TriggerReset"):FireServer(unpack(args))
wait(3)
args = {
    [1] = {
        ["id"] = "mapTeleport",
        ["teleId"] = "field2"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
switchGrass("planet")
wait(5)
switchGrass("obs")
wait(5)
args = {
    [1] = "formRing"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TriggerReset"):FireServer(unpack(args))
wait(1)
switchGrass("planet")
wait(5)
switchGrass("obs")
wait(5)
args = {
    [1] = "formRing"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TriggerReset"):FireServer(unpack(args))
wait(3)
args = {
    [1] = "quadrant"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TriggerReset"):FireServer(unpack(args))
wait(3)
args = {
    [1] = "astrolabe"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TriggerReset"):FireServer(unpack(args))
wait(4)
switchGrass("anti")
wait(2)
args = {
    [1] = {
        ["id"] = "mapTeleport",
        ["teleId"] = "field"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = "rocketPart"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TriggerReset"):FireServer(unpack(args))
wait(3)
args = {
    [1] = {
        ["id"] = "mapTeleport",
        ["teleId"] = "anti"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(2)
args = {
    [1] = {
        ["id"] = "mapTeleport",
        ["teleId"] = "field"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(2)
args = {
    [1] = "galactic"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TriggerReset"):FireServer(unpack(args))
wait(2)
args = {
    [1] = {
        ["id"] = "mapTeleport",
        ["teleId"] = "space"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(2)
args = {
    [1] = "breakRing"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TriggerReset"):FireServer(unpack(args))
wait(2)
args = {
    [1] = {
        ["id"] = "setDF",
        ["set"] = "10%"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "investDF",
        ["treeId"] = "cp"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "investDF",
        ["treeId"] = "planetarium"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "investDF",
        ["treeId"] = "oil"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "investDF",
        ["treeId"] = "tp"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "investDF",
        ["treeId"] = "grass"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "investDF",
        ["treeId"] = "fun"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "investDF",
        ["treeId"] = "xp"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = "sacrifice"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TriggerReset"):FireServer(unpack(args))
wait(2)
args = {
    [1] = {
        ["id"] = "mapTeleport",
        ["teleId"] = "anti"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(2)
args = {
    [1] = {
        ["id"] = "mapTeleport",
        ["teleId"] = "unnatural"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(2)
switchGrass("un")
wait(3)
args = {
    [1] = "normality"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TriggerReset"):FireServer(unpack(args))
wait(5)
args = {
    [1] = {
        ["id"] = "mapTeleport",
        ["teleId"] = "field2"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(2)
switchGrass("planet")
wait(3)
args = {
    [1] = "planetary"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TriggerReset"):FireServer(unpack(args))
wait(2)
wait(1)
switchGrass("planet")
wait(5)
switchGrass("obs")
wait(5)
args = {
    [1] = "formRing"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TriggerReset"):FireServer(unpack(args))
wait(1)
switchGrass("planet")
wait(3)
args = {
    [1] = "planetary"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TriggerReset"):FireServer(unpack(args))
wait(5)
args = {
    [1] = {
        ["id"] = "mapTeleport",
        ["teleId"] = "unnatural"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
switchGrass("un")
wait(3)
args = {
    [1] = "grassJump"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TriggerReset"):FireServer(unpack(args))
wait(5)
args = {
    [1] = {
        ["id"] = "mapTeleport",
        ["teleId"] = "field2"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(2)
args = {
    [1] = {
        ["id"] = "toggleAutobuy",
        ["t"] = "curr",
        ["pid"] = "perks2"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "toggleAutobuy",
        ["t"] = "curr",
        ["pid"] = "astro"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "toggleAutobuy",
        ["t"] = "curr",
        ["pid"] = "rings"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = "planetaryTrial"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TriggerReset"):FireServer(unpack(args))
wait(1)
switchGrass("planet")
wait(20)
args = {
    [1] = "planetaryTrial"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TriggerReset"):FireServer(unpack(args))
wait(1)
switchGrass("un")
wait(1)
args = {
    [1] = "planetaryTrial"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TriggerReset"):FireServer(unpack(args))
wait(1)
switchGrass("planet")
wait(20)
args = {
    [1] = "planetaryTrial"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TriggerReset"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "mapTeleport",
        ["teleId"] = "light"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(2)
args = {
    [1] = "astralPrestige"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TriggerReset"):FireServer(unpack(args))
wait(2)
args = {
    [1] = "astralPrestige"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TriggerReset"):FireServer(unpack(args))
wait(2)
args = {
    [1] = "astralPrestige"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TriggerReset"):FireServer(unpack(args))
wait(2)
args = {
    [1] = "astralPrestige"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TriggerReset"):FireServer(unpack(args))
wait(2)
args = {
    [1] = "astralPrestige"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TriggerReset"):FireServer(unpack(args))
wait(2)
args = {
    [1] = "astralPrestige"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TriggerReset"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "toggleLunar",
        ["lunarId"] = "df"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "toggleLunar",
        ["lunarId"] = "cos"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "toggleLunar",
        ["lunarId"] = "xp"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(2)
args = {
    [1] = {
        ["id"] = "mapTeleport",
        ["teleId"] = "dark"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(2)
args = {
    [1] = {
        ["id"] = "setDF",
        ["set"] = "25%"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(2)
args = {
    [1] = {
        ["id"] = "investDF",
        ["treeId"] = "xp"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "investDF",
        ["treeId"] = "planetarium"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "investDF",
        ["treeId"] = "cp"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(2)
args = {
    [1] = {
        ["id"] = "mapTeleport",
        ["teleId"] = "field2"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
switchGrass("un")
wait(1)
args = {
    [1] = "planetaryTrial"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TriggerReset"):FireServer(unpack(args))
wait(1)
switchGrass("planet")
wait(20)
args = {
    [1] = "planetaryTrial"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TriggerReset"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "toggleAutobuy",
        ["t"] = "curr",
        ["pid"] = "rings"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "toggleAutobuy",
        ["t"] = "curr",
        ["pid"] = "astro"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "toggleAutobuy",
        ["t"] = "curr",
        ["pid"] = "perks2"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(3)
args = {
    [1] = "planetary"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TriggerReset"):FireServer(unpack(args))
wait(5)
switchGrass("un")
wait(1)
args = {
    [1] = {
        ["id"] = "mapTeleport",
        ["teleId"] = "unnatural"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(10)
args = {
    [1] = "grassJump"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TriggerReset"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "mapTeleport",
        ["teleId"] = "field2"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(3)
args = {
    [1] = "supernova"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TriggerReset"):FireServer(unpack(args))
wait(2)
args = {
    [1] = {
        ["id"] = "mapTeleport",
        ["teleId"] = "industrial"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(3)
args = {
    [1] = "rocketPart"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TriggerReset"):FireServer(unpack(args))
wait(1)
args = {
    [1] = "galactic"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TriggerReset"):FireServer(unpack(args))
wait(2)
args = {
    [1] = {
        ["id"] = "mapTeleport",
        ["teleId"] = "field2"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(6)
args = {
    [1] = "supernova"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TriggerReset"):FireServer(unpack(args))
wait(2)
args = {
    [1] = {
        ["id"] = "mapTeleport",
        ["teleId"] = "light"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(2)
args = {
    [1] = {
        ["id"] = "centralize",
        ["cent"] = "pp"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "centralize",
        ["cent"] = "crystals"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "centralize",
        ["cent"] = "steel"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "mapTeleport",
        ["teleId"] = "star"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "buySC",
        ["scId"] = "sol"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "buySC",
        ["scId"] = "soul"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "buySC",
        ["scId"] = "rem"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "recallSol"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "allocateOne"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "setSoul",
        ["x"] = 0.25
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "buySoul",
        ["soulId"] = "maxS"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "buySoul",
        ["soulId"] = "coll"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "buySoul",
        ["soulId"] = "form"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(3)
args = {
    [1] = {
        ["id"] = "allocateOne"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(3)
args = {
    [1] = "sunrise"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TriggerReset"):FireServer(unpack(args))
wait(3)
args = {
    [1] = {
        ["id"] = "mapTeleport",
        ["teleId"] = "light"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(2)
args = {
    [1] = {
        ["id"] = "centralize",
        ["cent"] = "rocketFuel"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "centralize",
        ["cent"] = "charge"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "centralize",
        ["cent"] = "agrass"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "centralize",
        ["cent"] = "ap"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "centralize",
        ["cent"] = "oil"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "centralize",
        ["cent"] = "platinum"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "centralize",
        ["cent"] = "fun"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "centralize",
        ["cent"] = "stars"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "mapTeleport",
        ["teleId"] = "sol"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "buySC",
        ["scId"] = "sc2"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "buySC",
        ["scId"] = "soulc"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "buySC",
        ["scId"] = "sword"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "buySC",
        ["scId"] = "s7"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "buySC",
        ["scId"] = "s8"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "buySC",
        ["scId"] = "s9"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "buySC",
        ["scId"] = "s10"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "buySC",
        ["scId"] = "s12"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "mapTeleport",
        ["teleId"] = "field2"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = "constellation"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TriggerReset"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "mapTeleport",
        ["teleId"] = "chal"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = "subparnova"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TriggerReset"):FireServer(unpack(args))
wait(2)
args = {
    [1] = "subparnova"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TriggerReset"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "allocateOne"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(3)
args = {
    [1] = {
        ["id"] = "allocateOne"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "allocateOne"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "allocateOne"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "addSol",
        ["barId"] = "p5"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "addSol",
        ["barId"] = "p6"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "addSol",
        ["barId"] = "p7"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "addSol",
        ["barId"] = "p8"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "addSol",
        ["barId"] = "p9"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "addSol",
        ["barId"] = "p10"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = "sunrise"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TriggerReset"):FireServer(unpack(args))
wait(3)
args = {
    [1] = {
        ["id"] = "mapTeleport",
        ["teleId"] = "light"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "centralize",
        ["cent"] = "sfrgt"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(5)
args = {
    [1] = {
        ["id"] = "centralize",
        ["cent"] = "darkMatter"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "mapTeleport",
        ["teleId"] = "sol"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.MetalBits.SP.Restore.Portal.ITele.Tele.CFrame
wait(1)
args = {
    [1] = {
        ["id"] = "buyUpgrade",
        ["mode"] = "max",
        ["upgradeId"] = "Gd"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "buyUpgrade",
        ["mode"] = "max",
        ["upgradeId"] = "Go"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "buyUpgrade",
        ["mode"] = "max",
        ["upgradeId"] = "Gf"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "buyUpgrade",
        ["mode"] = "max",
        ["upgradeId"] = "Gc"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "buyUpgrade",
        ["mode"] = "max",
        ["upgradeId"] = "Gre"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "buyUpgrade",
        ["mode"] = "max",
        ["upgradeId"] = "Gs"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "buyUpgrade",
        ["mode"] = "max",
        ["upgradeId"] = "Gso2"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "buyUpgrade",
        ["mode"] = "max",
        ["upgradeId"] = "Gm"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "buyUpgrade",
        ["mode"] = "max",
        ["upgradeId"] = "Gco"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "mapTeleport",
        ["teleId"] = "sol"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(2)
args = {
    [1] = "subparnova"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TriggerReset"):FireServer(unpack(args))
wait(3)
args = {
    [1] = "sunset"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TriggerReset"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "buySC",
        ["scId"] = "s11"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "buySC",
        ["scId"] = "s13"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "changeSoul",
        ["x"] = 2
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "setSoul",
        ["x"] = 0.25
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "buySoul",
        ["soulId"] = "soul"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "buySoul",
        ["soulId"] = "offdef"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "buySoul",
        ["soulId"] = "comp"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "buySoul",
        ["soulId"] = "mana"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "buySoul",
        ["soulId"] = "rest"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(5)
args = {
    [1] = "sunrise"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TriggerReset"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "mapTeleport",
        ["teleId"] = "light"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "centralize",
        ["cent"] = "momentum"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "centralize",
        ["cent"] = "moonstone"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "centralize",
        ["cent"] = "ugrass"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "centralize",
        ["cent"] = "np"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "mapTeleport",
        ["teleId"] = "sol"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(3)
args = {
    [1] = "subparnova"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TriggerReset"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "buySC",
        ["scId"] = "s14"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "buySC",
        ["scId"] = "s15"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "buySC",
        ["scId"] = "s16"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "buySC",
        ["scId"] = "s17"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "selectConst",
        ["csType"] = 1,
        ["csTier"] = 1
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "placeConst",
        ["row"] = 0,
        ["col"] = 0
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(4)
args = {
    [1] = {
        ["id"] = "loadConstLayout",
        ["num"] = 1
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(5)
args = {
    [1] = "subparnova"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TriggerReset"):FireServer(unpack(args))
wait(5)
args = {
    [1] = "sunrise"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TriggerReset"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "mapTeleport",
        ["teleId"] = "light"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "centralize",
        ["cent"] = "clouds"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "centralize",
        ["cent"] = "darkFruits"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "centralize",
        ["cent"] = "rings"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "mapTeleport",
        ["teleId"] = "sol"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "buySC",
        ["scId"] = "s18"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "buySC",
        ["scId"] = "s19"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "buySC",
        ["scId"] = "s20"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(2)
args = {
    [1] = {
        ["id"] = "allocateOne"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "mapTeleport",
        ["teleId"] = "toGL"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Features.ToCorruptedLand.Tele.Tele.CFrame
wait(2)
args = {
    [1] = "activateSynthesis"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TriggerReset"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "synthesis",
        ["selected"] = "cs",
        ["syn"] = 3
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "synthesis",
        ["selected"] = "cs",
        ["syn"] = 1
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "synthesis",
        ["selected"] = "cs",
        ["syn"] = 2
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(10)
args = {
    [1] = {
        ["id"] = "synthesis",
        ["selected"] = "cs",
        ["syn"] = 1
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "synthesis",
        ["selected"] = "cs",
        ["syn"] = 1
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "buyUpgrade",
        ["mode"] = "max",
        ["upgradeId"] = "CSss"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "buyUpgrade",
        ["mode"] = "max",
        ["upgradeId"] = "CSsy"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(6)
args = {
    [1] = {
        ["id"] = "synthesis",
        ["selected"] = "cs",
        ["syn"] = 1
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "synthesis",
        ["selected"] = "cs",
        ["syn"] = 1
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "buyUpgrade",
        ["mode"] = "max",
        ["upgradeId"] = "CSsy"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "buyUpgrade",
        ["mode"] = "max",
        ["upgradeId"] = "CSsy"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(6)
args = {
    [1] = {
        ["id"] = "synthesis",
        ["selected"] = "cs",
        ["syn"] = 1
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "synthesis",
        ["selected"] = "cs",
        ["syn"] = 1
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "buyUpgrade",
        ["mode"] = "max",
        ["upgradeId"] = "CSod"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "buyUpgrade",
        ["mode"] = "max",
        ["upgradeId"] = "CSc"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "buyUpgrade",
        ["mode"] = "max",
        ["upgradeId"] = "CSf"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "buyUpgrade",
        ["mode"] = "max",
        ["upgradeId"] = "CSs"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "buyUpgrade",
        ["mode"] = "max",
        ["upgradeId"] = "CSre"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "buyUpgrade",
        ["mode"] = "max",
        ["upgradeId"] = "CSs2"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "mapTeleport",
        ["teleId"] = "sol"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(3)
args = {
    [1] = "subparnova"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TriggerReset"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "allocateOne"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(5)
args = {
    [1] = "sunrise"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TriggerReset"):FireServer(unpack(args))
wait(10)
args = {
    [1] = "twilight"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TriggerReset"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "changeSoul",
        ["x"] = 3
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "setSoul",
        ["x"] = 0.25
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "buySoul",
        ["soulId"] = "offdef2"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "buySoul",
        ["soulId"] = "syngs"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "buySoul",
        ["soulId"] = "syncs"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "buySoul",
        ["soulId"] = "soul2"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(9)
args = {
    [1] = "sunrise"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TriggerReset"):FireServer(unpack(args))
wait(10)
args = {
    [1] = "sunset"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TriggerReset"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "changeSoul",
        ["x"] = 2
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "setSoul",
        ["x"] = 0.25
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "buySoul",
        ["soulId"] = "soul"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "buySoul",
        ["soulId"] = "rest"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "buySoul",
        ["soulId"] = "mana"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "buySoul",
        ["soulId"] = "comp"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "buySoul",
        ["soulId"] = "offdef"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(8)
args = {
    [1] = "sunrise"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TriggerReset"):FireServer(unpack(args))
wait(7)
args = {
    [1] = "subparnova"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TriggerReset"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "capSol",
        ["barId"] = "p1"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "addSol",
        ["barId"] = "p2"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "addSol",
        ["barId"] = "p3"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "addSol",
        ["barId"] = "p4"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "addSol",
        ["barId"] = "p5"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "addSol",
        ["barId"] = "p6"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "addSol",
        ["barId"] = "p7"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "addSol",
        ["barId"] = "p8"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "addSol",
        ["barId"] = "p9"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "addSol",
        ["barId"] = "p10a"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "mapTeleport",
        ["teleId"] = "syn"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "synthesis",
        ["selected"] = "cs",
        ["syn"] = 1
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(10)
args = {
    [1] = {
        ["id"] = "synthesis",
        ["selected"] = "cs",
        ["syn"] = 1
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "synthesis",
        ["selected"] = "cs",
        ["syn"] = 1
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "synthesis",
        ["selected"] = "gb",
        ["syn"] = 3
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "synthesis",
        ["selected"] = "fs",
        ["syn"] = 2
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "synthesis",
        ["selected"] = "fs",
        ["syn"] = 2
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "synthesis",
        ["selected"] = "gb",
        ["syn"] = 3
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "synthesis",
        ["selected"] = "cs",
        ["syn"] = 3
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "synthesis",
        ["selected"] = "cs",
        ["syn"] = 2
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(5)
args = {
    [1] = {
        ["id"] = "synthesis",
        ["selected"] = "cs",
        ["syn"] = 1
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "synthesis",
        ["selected"] = "cs",
        ["syn"] = 1
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "mapTeleport",
        ["teleId"] = "sol"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "solChallenge",
        ["challenge"] = "sc"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(3)
args = {
    [1] = {
        ["id"] = "solChallenge",
        ["challenge"] = "sc"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "solChallenge",
        ["challenge"] = "o"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(3)
args = {
    [1] = {
        ["id"] = "solChallenge",
        ["challenge"] = "o"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "solChallenge",
        ["challenge"] = "t"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(3)
args = {
    [1] = {
        ["id"] = "solChallenge",
        ["challenge"] = "t"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
args = {
    [1] = {
        ["id"] = "solChallenge",
        ["challenge"] = "cs"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(3)
args = {
    [1] = {
        ["id"] = "solChallenge",
        ["challenge"] = "cs"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "solChallenge",
        ["challenge"] = "comp"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(3)
args = {
    [1] = {
        ["id"] = "solChallenge",
        ["challenge"] = "comp"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "solChallenge",
        ["challenge"] = "adv"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(3)
args = {
    [1] = {
        ["id"] = "solChallenge",
        ["challenge"] = "adv"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "buyUpgrade",
        ["mode"] = "max",
        ["upgradeId"] = "GSc"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "buyUpgrade",
        ["mode"] = "max",
        ["upgradeId"] = "GSre"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "buyUpgrade",
        ["mode"] = "max",
        ["upgradeId"] = "GSf"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "buyUpgrade",
        ["mode"] = "max",
        ["upgradeId"] = "GSs"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "buyUpgrade",
        ["mode"] = "max",
        ["upgradeId"] = "GSso"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "buyUpgrade",
        ["mode"] = "max",
        ["upgradeId"] = "GSsw"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "buyUpgrade",
        ["mode"] = "max",
        ["upgradeId"] = "GSm"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "buyUpgrade",
        ["mode"] = "max",
        ["upgradeId"] = "GSco"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "buyUpgrade",
        ["mode"] = "max",
        ["upgradeId"] = "GSso2"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(5)
args = {
    [1] = "sunrise"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TriggerReset"):FireServer(unpack(args))
wait(3)
args = {
    [1] = {
        ["id"] = "loadConstLayout",
        ["num"] = 1
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "gridLock"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(5)
args = {
    [1] = "subparnova"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TriggerReset"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "mapTeleport",
        ["teleId"] = "light"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "centralize",
        ["cent"] = "planetarium"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "centralize",
        ["cent"] = "astro"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "centralize",
        ["cent"] = "measure"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "centralize",
        ["cent"] = "planets"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "centralize",
        ["cent"] = "arcs"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "centralize",
        ["cent"] = "lines"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "centralize",
        ["cent"] = "obs"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "mapTeleport",
        ["teleId"] = "field2"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = "formRing"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TriggerReset"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "centralize",
        ["cent"] = "res"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "centralize",
        ["cent"] = "dcharge"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "centralize",
        ["cent"] = "stardust"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "mapTeleport",
        ["teleId"] = "sol"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "buySC",
        ["scId"] = "s21"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "buySC",
        ["scId"] = "s22"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "buySC",
        ["scId"] = "s23"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "buySC",
        ["scId"] = "s24"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "buySC",
        ["scId"] = "s25"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "buySC",
        ["scId"] = "s26"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "buySC",
        ["scId"] = "s27"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "buySC",
        ["scId"] = "s28"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "buySC",
        ["scId"] = "s29"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "mapTeleport",
        ["teleId"] = "light"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(5)
args = {
    [1] = {
        ["id"] = "centralize",
        ["cent"] = "perks"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "mapTeleport",
        ["teleId"] = "sol"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "buySC",
        ["scId"] = "s31"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(6)
args = {
    [1] = "twilight"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TriggerReset"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "gridLock"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "loadConstLayout",
        ["num"] = 1
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "gridLock"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "mapTeleport",
        ["teleId"] = "syn"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "synthesis",
        ["selected"] = "cs",
        ["syn"] = 1
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(10)
args = {
    [1] = {
        ["id"] = "synthesis",
        ["selected"] = "cs",
        ["syn"] = 1
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "synthesis",
        ["selected"] = "cs",
        ["syn"] = 1
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(10)
args = {
    [1] = {
        ["id"] = "synthesis",
        ["selected"] = "cs",
        ["syn"] = 1
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(1)
args = {
    [1] = {
        ["id"] = "mapTeleport",
        ["teleId"] = "sol"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))
wait(4)
args = {
    [1] = "subparnova"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TriggerReset"):FireServer(unpack(args))
wait(1)
print("its over.")
local stageLabel = game:GetService("Players").LocalPlayer.PlayerGui.Solarians.Portaling.ShopContainer.Stage

repeat
    wait()
    local text = stageLabel.Text
    local stageNumber = tonumber(string.match(text, "%d+"))
until stageNumber and stageNumber >= 1000

print("Stage is 1000 or higher!")
args = {
    [1] = {
        ["id"] = "mapTeleport",
        ["teleId"] = "loop1"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GenericEvent"):FireServer(unpack(args))

wait(1)
args = {
    [1] = "loop",
    [2] = {
        ["layer"] = 1
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TriggerReset"):FireServer(unpack(args))
