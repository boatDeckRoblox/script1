local ModuleLoader = {}

local githubStarter = "https://raw.githubusercontent.com/boatDeckRoblox/script1/refs/heads/main/ModName"

local Modules = {
  "SwordModule",
  "ExploiterModule",
  "GameManager"  
}


local ModuleLoader = {}

local githubStarter = "https://raw.githubusercontent.com/boatDeckRoblox/script1/refs/heads/main/ModName"

local Modules = {
    "SwordModule",
    "ExploiterModule",
    "GameManager"  
}

function ModuleLoader:LoadModule(moduleToLoad)
    if table.find(Modules, moduleToLoad) then
        return loadstring(game:HttpGet(githubStarter:gsub("ModName", moduleToLoad)))()
    else
        warn("Module " .. moduleToLoad .. " not found.")
    end
end

return ModuleLoader

