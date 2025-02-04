local ModuleLoader = {}

local githubStarter = "https://raw.githubusercontent.com/boatDeckRoblox/script1/refs/heads/main/ModName"

local Modules = {
  "SwordModule",
  "ExploiterModule",
  "GameManager"  
}


local function ModuleLoader:LoadModule(moduleToLoad)
      if table.find(Modules, moduleToLoad) then
        return loadstring(game:HttpGet(githubStarter:gsub("ModName", moduleToLoad)))()
    end
end

return ModuleLoader
