local workspaceInitFile = "./.vscode/nvim.lua"
local vscodeLaunchFile = "./.vscode/launch.json"

function file_exists(name)
   local f=io.open(name,"r")
   if f~=nil then io.close(f) return true else return false end
end

if file_exists(workspaceInitFile) then
  dofile(workspaceInitFile) 
end

if file_exists(vscodeLaunchFile) then
  require("dap.ext.vscode").load_launchjs(vscodeLaunchFile) 
end
