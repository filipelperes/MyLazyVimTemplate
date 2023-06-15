-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local wk = require("which-key")

local mappings = {
  ["<leader>;"] = { "<cmd>Alpha<CR>", "Dashboard" },
  ["<leader>W"] = { "<cmd>w!<CR>", "Save" },
  ["<leader>C"] = { "<cmd>BufferKill<CR>", "Close Buffer" },
  ["<leader>h"] = { "<cmd>nohlsearch<CR>", "No Highlight" },
  ["<leader>e"] = { "<cmd>NvimTreeToggle<CR>", "Explorer" },
  ["<leader>z"] = { "<cmd>ZenMode<cr>", "Zen" },
  ["<leader>L"] = {
    name = "LSP",
    a = { "<cmd>lua vim.lsp.buf.code_action()<cr>", "Code Action" },
    d = { "<cmd>Telescope diagnostics bufnr=0 theme=get_ivy<cr>", "Buffer Diagnostics" },
    w = { "<cmd>Telescope diagnostics<cr>", "Diagnostics" },
    f = { "<cmd>lua require('lvim.lsp.utils').format()<cr>", "Format" },
    i = { "<cmd>LspInfo<cr>", "Info" },
    I = { "<cmd>Mason<cr>", "Mason Info" },
    j = {
      "<cmd>lua vim.diagnostic.goto_next()<cr>",
      "Next Diagnostic",
    },
    k = {
      "<cmd>lua vim.diagnostic.goto_prev()<cr>",
      "Prev Diagnostic",
    },
    l = { "<cmd>lua vim.lsp.codelens.run()<cr>", "CodeLens Action" },
    q = { "<cmd>lua vim.diagnostic.setloclist()<cr>", "Quickfix" },
    r = { "<cmd>lua vim.lsp.buf.rename()<cr>", "Rename" },
    s = { "<cmd>Telescope lsp_document_symbols<cr>", "Document Symbols" },
    S = {
      "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>",
      "Workspace Symbols",
    },
    e = { "<cmd>Telescope quickfix<cr>", "Telescope Quickfix" },
  },
  ["<leader>T"] = {
    name = "Treesitter",
    i = { ":TSConfigInfo<cr>", "Info" },
    h = { "<cmd>TSHighlightCapturesUnderCursor<cr>", "Highlight" },
    p = { "<cmd>TSPlaygroundToggle<cr>", "Playground" }
  },
  ["<leader>d"] = {
    name = "Debug",
    t = { "<cmd>lua require'dap'.toggle_breakpoint()<cr>", "Toggle Breakpoint" },
    b = { "<cmd>lua require'dap'.step_back()<cr>", "Step Back" },
    c = { "<cmd>lua require'dap'.continue()<cr>", "Continue" },
    C = { "<cmd>lua require'dap'.run_to_cursor()<cr>", "Run To Cursor" },
    d = { "<cmd>lua require'dap'.disconnect()<cr>", "Disconnect" },
    g = { "<cmd>lua require'dap'.session()<cr>", "Get Session" },
    i = { "<cmd>lua require'dap'.step_into()<cr>", "Step Into" },
    o = { "<cmd>lua require'dap'.step_over()<cr>", "Step Over" },
    u = { "<cmd>lua require'dap'.step_out()<cr>", "Step Out" },
    p = { "<cmd>lua require'dap'.pause()<cr>", "Pause" },
    r = { "<cmd>lua require'dap'.repl.toggle()<cr>", "Toggle Repl" },
    s = { "<cmd>lua require'dap'.continue()<cr>", "Start" },
    q = { "<cmd>lua require'dap'.close()<cr>", "Quit" },
    U = { "<cmd>lua require'dapui'.toggle({reset = true})<cr>", "Toggle UI" },
  },
  ["<leader>p"] = {
    name = "Plugins",
    i = { "<cmd>Lazy install<cr>", "Install" },
    s = { "<cmd>Lazy sync<cr>", "Sync" },
    S = { "<cmd>Lazy clear<cr>", "Status" },
    c = { "<cmd>Lazy clean<cr>", "Clean" },
    u = { "<cmd>Lazy update<cr>", "Update" },
    p = { "<cmd>Lazy profile<cr>", "Profile" },
    l = { "<cmd>Lazy log<cr>", "Log" },
    d = { "<cmd>Lazy debug<cr>", "Debug" },
  },
  ["<leader>G"] = {
    name = "Gist",
    a = { "<cmd>Gist -b -a<cr>", "Create Anon" },
    d = { "<cmd>Gist -d<cr>", "Delete" },
    f = { "<cmd>Gist -f<cr>", "Fork" },
    g = { "<cmd>Gist -b<cr>", "Create" },
    l = { "<cmd>Gist -l<cr>", "List" },
    p = { "<cmd>Gist -b -p<cr>", "Create Private" },
  },
  ["<leader>r"] = {
    name = "Replace",
    r = { "<cmd>lua require('spectre').open()<cr>", "Replace" },
    w = { "<cmd>lua require('spectre').open_visual({select_word=true})<cr>", "Replace Word" },
    f = { "<cmd>lua require('spectre').open_file_search()<cr>", "Replace Buffer" },
  },
  ["<leader>m"] = {
    name = "Mason",
    m = { "<cmd>Mason<cr>", "Open Mason" },
    u = { "<cmd>MasonUpdate<cr>", "Update all extensions" },
    l = { "<cmd>MasonLog<cr>", "Log file" },
    U = { "<cmd>MasonUninstallAll<cr>", "Uninstall all extensions" },
  }
}

wk.register(mappings)

vim.keymap.set(
  "n",
  "<leader>sx",
  require("telescope.builtin").resume,
  { noremap = true, silent = true, desc = "Resume" }
)

-- GIT
vim.keymap.set(
  "n",
  "<leader>gb",
  "<cmd>Telescope git_branches<cr>",
  { noremap = true, silent = true, desc = "Checkout branch" }
)

vim.keymap.set(
  "n",
  "<leader>gC",
  "<cmd>Telescope git_commits<cr>",
  { noremap = true, silent = true, desc = "Checkout commit" }
)

vim.keymap.set(
  "n",
  "<leader>gd",
   "<cmd>Gitsigns diffthis HEAD<cr>",
  { noremap = true, silent = true, desc = "Git diff" }
)

vim.keymap.set(
  "n",
  "<leader>gj",
   "<cmd>lua require 'gitsigns'.next_hunk({navigation_message = false})<cr>",
  { noremap = true, silent = true, desc = "Next Hunk" }
)

vim.keymap.set(
  "n",
  "<leader>gk",
   "<cmd>lua require 'gitsigns'.prev_hunk({navigation_message = false})<cr>",
  { noremap = true, silent = true, desc = "Prev Hunk" }
)

vim.keymap.set(
  "n",
  "<leader>gl",
   "<cmd>lua require 'gitsigns'.blame_line()<cr>",
  { noremap = true, silent = true, desc = "Git Blame" }
)

vim.keymap.set(
  "n",
  "<leader>go",
   "<cmd>Telescope git_status<cr>",
  { noremap = true, silent = true, desc = "Open changed file" }
)

vim.keymap.set(
  "n",
  "<leader>gp",
   "<cmd>lua require 'gitsigns'.preview_hunk()<cr>",
  { noremap = true, silent = true, desc = "Preview Hunk" }
)

vim.keymap.set(
  "n",
  "<leader>gr",
  "<cmd>lua require 'gitsigns'.reset_hunk()<cr>",
  { noremap = true, silent = true, desc = "Reset Hunk" }
)

vim.keymap.set(
  "n",
  "<leader>gR",
  "<cmd>lua require 'gitsigns'.reset_buffer()<cr>",
  { noremap = true, silent = true, desc = "Reset Buffer" }
)

vim.keymap.set(
  "n",
  "<leader>gS",
  "<cmd>lua require 'gitsigns'.stage_hunk()<cr>",
  { noremap = true, silent = true, desc = "Stage Hunk" }
)

vim.keymap.set(
  "n",
  "<leader>gu",
   "<cmd>lua require 'gitsigns'.undo_stage_hunk()<cr>",
  { noremap = true, silent = true, desc = "Undo Stage Hunk" }
)

-- BUFFER
vim.keymap.set(
  "n",
  "<leader>bB",
  "<cmd>BufferLineCyclePrev<cr>",
  { noremap = true, silent = true, desc = "Previous" }
)

vim.keymap.set(
  "n",
  "<leader>be",
  "<cmd>BufferLinePickClose<cr>",
  { noremap = true, silent = true, desc = "Pick which buffer to close" }
)

vim.keymap.set(
  "n",
  "<leader>bf",
  "<cmd>Telescope buffers previewer=false<cr>",
  { noremap = true, silent = true, desc = "Find" }
)

vim.keymap.set(
  "n",
  "<leader>bh",
  "<cmd>BufferLineCloseLeft<cr>",
  { noremap = true, silent = true, desc = "Close all to the left" }
)

vim.keymap.set(
  "n",
  "<leader>bj",
  "<cmd>BufferLinePick<cr>",
  { noremap = true, silent = true, desc = "Jump" }
)

vim.keymap.set(
  "n",
  "<leader>bl",
  "<cmd>BufferLineCloseRight<cr>",
  { noremap = true, silent = true, desc = "Close all to the right" }
)

vim.keymap.set(
  "n",
  "<leader>bL",
  "<cmd>BufferLineSortByDirectory<cr>",
  { noremap = true, silent = true, desc = "Sort by language" }
)

vim.keymap.set(
  "n",
  "<leader>bn",
   "<cmd>BufferLineCycleNext<cr>",
  { noremap = true, silent = true, desc = "Next" }
)

vim.keymap.set(
  "n",
  "<leader>bW",
  "<cmd>noautocmd w<cr>",
  { noremap = true, silent = true, desc = "Save without formatting (noautocmd)" }
)

-- SEARCH
vim.keymap.set(
  "n",
  "<leader>sf",
  "<cmd>Telescope find_files<cr>",
  { noremap = true, silent = true, desc = "Find File" }
)

vim.keymap.set(
  "n",
  "<leader>bl",
  "<cmd>Telescope find_files<cr>",
  { noremap = true, silent = true, desc = "Resume Last Search" }
)

vim.keymap.set(
  "n",
  "<leader>sp",
  "<cmd>lua require('telescope.builtin').colorscheme({enable_preview = true})<cr>",
  { noremap = true, silent = true, desc = "Colorscheme with Preview" }

)