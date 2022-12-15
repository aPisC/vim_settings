local workspaceInitFile = "./.vim/init.lua"

function file_exists(name)
   local f=io.open(name,"r")
   if f~=nil then io.close(f) return true else return false end
end

if file_exists(workspaceInitFile) then

  -- vim.api.nvim_create_autocmd("VimEnter", {
  --   pattern = { "*" },
  --   callback = function() dofile(workspaceInitFile) end,
  -- })
  dofile(workspaceInitFile) 
end
