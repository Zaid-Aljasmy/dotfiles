local M = {}
M.zathura_opened = false

local home = vim.fn.expand("~")
M.source_dir = home .. "/LaTeX/LaTeX-Source-Files"
M.main_dir = home .. "/LaTeX/LaTeX-PDF"
M.build_dir = M.main_dir .. "/build"
M.pdf_dir = M.main_dir .. "/pdf"

M.build_and_view = function()
  local texfile = vim.fn.expand("%:p")
  local filename = vim.fn.expand("%:t:r")

  vim.fn.mkdir(M.source_dir, "p")
  vim.fn.mkdir(M.build_dir, "p")
  vim.fn.mkdir(M.pdf_dir, "p")

  local build_pdf = M.build_dir .. "/" .. filename .. ".pdf"
  local final_pdf = M.pdf_dir .. "/" .. filename .. ".pdf"

  local cmd = string.format(
    "pdflatex -interaction=nonstopmode -halt-on-error -output-directory=%s %s",
    M.build_dir,
    texfile
  )
  vim.fn.system(cmd)

  if vim.fn.filereadable(build_pdf) == 1 then
    vim.fn.system(string.format("mv -f %s %s", build_pdf, final_pdf))
  end

  if not M.zathura_opened then
    vim.fn.jobstart("zathura " .. final_pdf, { detach = true })
    M.zathura_opened = true
  end
end

M.enable_auto_build = function()
  vim.api.nvim_create_autocmd("BufWritePost", {
    pattern = "*.tex",
    callback = function()
      M.build_and_view()
    end,
  })
end

return M

