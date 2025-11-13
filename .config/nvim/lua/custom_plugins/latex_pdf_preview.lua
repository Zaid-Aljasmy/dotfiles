local M = {}
M.zathura_opened = false 

M.build_and_view = function()
  local texfile = vim.fn.expand("%:p")
  local pdffile = texfile:gsub("%.tex$", ".pdf")

  vim.fn.system("pdflatex -interaction=nonstopmode -halt-on-error " .. texfile)

  if not M.zathura_opened then
    vim.fn.jobstart("zathura " .. pdffile, {detach = true})
    M.zathura_opened = true
  end
end

M.enable_auto_build = function()
  vim.api.nvim_create_autocmd("BufWritePost", {
    pattern = "*.tex",
    callback = function()
      M.build_and_view()
    end
  })
end

return M

