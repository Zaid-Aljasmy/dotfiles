return {
  "Exafunction/codeium.vim",
  event = "InsertEnter",
  config = function()
    vim.g.codeium_disable_bindings = 1

    -- Automatically trigger completion when typing
    vim.g.codeium_auto_trigger = true

    -- Enable suggestion popup automatically when typing
    vim.g.codeium_suggest_auto = true

    -- Accept suggestion with Tab
    vim.keymap.set("i", "<Tab>", function()
      return vim.fn["codeium#Accept"]()
    end, { expr = true })

    -- Navigate to the previous suggestion with Ctrl + ,
    vim.keymap.set("i", "<C-,>", function()
      return vim.fn["codeium#CycleCompletions"](-1)
    end, { expr = true })

    -- Navigate to the next suggestion with Ctrl + .
    vim.keymap.set("i", "<C-.>", function()
      return vim.fn 
    end, { expr = true })

    -- Clear suggestions with Ctrl + x
    vim.keymap.set("i", "<C-x>", function()
      return vim.fn["codeium#Clear"]()
    end, { expr = true })
  end,
}

