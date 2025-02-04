local ModuleLoader = {}


local ModuleLoader = {}

local githubStarter = "https://raw.githubusercontent.com/boatDeckRoblox/script1/refs/heads/main/ModName"

local Modules = {
    "SwordModule",
    "ExploiterModule",
    "GameManager"  
}

function ModuleLoader:LoadModule(moduleToLoad)
    if table.find(Modules, moduleToLoad) then
      local name = (githubStarter:gsub("ModName", moduleToLoad))
        return loadstring(game:HttpGet(name))()
    else
        warn("Module " .. moduleToLoad .. " not found.")
    end
end

return ModuleLoader

