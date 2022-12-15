-- Load all .lua files from ~/.config/nvim directory ordered by name 
-- (except: init.lua to avoid recutrion)

local dir = "~/.config/nvim"
for file in io.popen('find "'..dir..'" -maxdepth 1 -type f | sort | grep -v init.lua$ | grep .lua$'):lines() do
  dofile(file)       
end


