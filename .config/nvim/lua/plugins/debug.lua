return {
  {
    'mfussenegger/nvim-dap',
    dependencies = {
      'rcarriga/nvim-dap-ui',
      'nvim-neotest/nvim-nio',
    },
    config = function()
      local dap = require('dap')
      local dapui = require('dapui')

      dapui.setup()

      -- 🢂 إعداد LLDB
      dap.adapters.lldb = {
        type = 'executable',
        command = 'lldb-vscode', -- ✅ تأكد أن lldb-vscode مثبت بالنظام
        name = 'lldb'
      }

      dap.configurations.cpp = {
        {
          name = "Launch LLDB",
          type = "lldb",
          request = "launch",
          program = function()
            return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
          end,
          cwd = '${workspaceFolder}',
          stopOnEntry = true,
          args = {},
        },
      }

      -- 🢂 نفس الإعداد لـ C أيضاً
      dap.configurations.c = dap.configurations.cpp

      -- 🢂 الاستماع لأحداث DAP UI
      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
      end

      -- 🢂 الاختصارات
      vim.keymap.set('n', '<F5>', function() dap.continue() end)
      vim.keymap.set('n', '<F10>', function() dap.step_over() end)
      vim.keymap.set('n', '<F11>', function() dap.step_into() end)
      vim.keymap.set('n', '<F12>', function() dap.step_out() end)
      vim.keymap.set('n', '<Leader>b', function() dap.toggle_breakpoint() end)
      vim.keymap.set('n', '<Leader>du', function() dapui.toggle() end)
    end,
  }
}

