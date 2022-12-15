local workspaceFiles = {
  scala=[[
    -- Enable auto formatter for scala files
    -- vim.cmd("autocmd BufWritePre *.{scala,sbt} Neoformat")

    -- Override scala debugger config
    -- local dap = require("dap")
    -- dap.configurations.scala = {
    --   {
    --     type = "scala",
    --     request = "launch",
    --     name = "RunOrTest",
    --     metals = {
    --       runType = "runOrTestFile",
    --       --args = { "firstArg", "secondArg", "thirdArg" }, -- here just as an example
    --     },
    --   },
    -- }
  ]],
}

function init_workspace(arg)
  local lang = arg["args"]
  if not workspaceFiles[lang] then
    print("Config " .. lang .. " does not exist")
    return
  end
  os.execute("mkdir -p ./.vim")
  local file = io.open("./.vim/init.lua", "a+")
  file:write("-- Insert " .. lang .. " configuration\n")
  file:write(workspaceFiles[lang])
  file:write("\n\n\n")
  file:close()
end

vim.api.nvim_create_user_command('InitWorkspace', init_workspace, { nargs=1 })
