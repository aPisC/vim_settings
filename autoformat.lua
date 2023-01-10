local M = {}

local config = {
  enabled = true,
  autocmd_created = false,
  enabled_lang = {
    ["*"] = false
  },
  formatter = {
    ["*"] = "Neoformat"
  }
}

function M.format(lang)
  if not config.enabled then print("d1") return end 
  if config.enabled_lang[lang] == false then print("d2") return end
  if not (config.enabled_lang[lang] or config.enabled_lang["*"]) then print("d3") return end


  local formatter = config.formatter[lang] or config.formatter["*"]
  if type(formatter) == "string" then
    vim.cmd(formatter)
  elseif type(formatter) == "function" then
    formatter()
  end
end


function M.enable(lang) 
  if lang == nil then
    config.enabled = true
  else
    config.enabled_lang[lang] = true
  end
end

function M.disable(lang) 
  if lang == nil then
    config.enabled = false
  else
    config.enabled_lang[lang] = false
  end
end

function M.setup(setup_config)
  if not config.autocmd_created then
    config.autocmd_created = true
    vim.api.nvim_create_autocmd({"BufWritePre"}, { pattern = {"*"}, callback=function()
      M.format(vim.bo.filetype)
    end})

    vim.api.nvim_create_user_command('Autoformat', function() M.format(vim.bo.filetype) end, {})
    vim.api.nvim_create_user_command('AutoformatDisable', function() M.disable() end, {})
    vim.api.nvim_create_user_command('AutoformatEnable', function() M.enable() end, {})
  end

  for k, v in pairs(setup_config) do
    if v == true then
      config.enabled_lang[k] = true
      config.formatter[k] = nil
    elseif v == false  then
      config.enabled_lang[k] = false
      config.formatter[k] = nil
    else
      config.enabled_lang[k] = true
      config.formatter[k] = v
    end
  end
end

return M
