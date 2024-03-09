---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },

    --  format with conform
    ["<leader>fm"] = {
      function()
        require("conform").format()
      end,
      "formatting",
    },

    --  move and select multiple lines
    ["J"] = { ":m .+1<CR>==", "Move line down"},
    ["K"] = { ":m .-2<CR>==", "Move line up" },

  },
  v = {
    [">"] = { ">gv", "indent"},
    ["J"] = {":m '>+1<CR>gv=gv", "Move lines down"},
    ["K"] = {":m '<-2<CR>gv=gv", "Move lines up"},
  },
}

-- more keybinds!

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line",
    },
    ["<leader>dr"] = {
      "<cmd> DapContinue <CR>",
      "Start debugger or go to next BP",
    },
    ["<leader>dn"] = {
      "<cmd> DapStepOver <CR>",
      "Goes next step skipping functions",
    },
    ["<leader>di"] = {
      "<cmd> DapStepInto <CR>",
      "Goes next step, including functions",
    },
    ["<leader>do"] = {
      "<cmd DapStepOut <CR>",
      "Step out of a function",
    },
    ["<leader>dk"] = {
      "<cmd> DapTerminate <CR>",
      "Kills the debugger",
    },
    ["<leader>dd"] = {
      function ()
        local widgets = require('dap.ui.widgets');
        local sidebar = widgets.sidebar(widgets.scopes);
        sidebar.open();
      end,
      "Open debugging sidebar"
    }
  }
}

M.crates = {
  plugin = true,
  n = {
    ["<leader>rcu"] = {
      function ()
        require('crates').upgrade_all_crates()
      end,
      "Update all crates"
    }
  }
}


return M
