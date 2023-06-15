return {
  { "shaunsingh/nord.nvim" },
  { "lunarvim/Onedarker.nvim" },
  { "rebelot/kanagawa.nvim" },
  { "bluz71/vim-nightfly-colors" },
  { "ellisonleao/gruvbox.nvim" },
  { "tanvirtin/monokai.nvim" },
  { "Mofiqul/dracula.nvim" },
  { "lunarvim/colorschemes" },
  { "LunarVim/lunar.nvim" },
  { "folke/lsp-colors.nvim" },
  { "rktjmp/lush.nvim" },
  { "navarasu/onedark.nvim" },
  { 'Rigellute/shades-of-purple.vim' },
  { 'yeddaif/neovim-purple' },
  { 'haishanh/night-owl.vim' },
  { 'olimorris/onedarkpro.nvim' },
  { 'joshdick/onedark.vim' },
  { 
    'rainglow/vim',
    name = "Rainglow"
  },
  { 'liviuschera/noctis' },
  { 'cpea2506/one_monokai.nvim' },
  { 'fratajczak/one-monokai-vim' },
  { 'johnpapa/vscode-winteriscoming' },
  { 'marko-cerovac/material.nvim' },
  { 'projekt0n/github-nvim-theme' },
  { 'hzchirs/vim-material' },
  { 'kaicataldo/material.vim' },
  { 'yonlu/omni.vim' },
  { 'EdenEast/nightfox.nvim' },
  { 'getomni/omni' },
  { 
    "norcalli/nvim-colorizer.lua",
      config = function()
        require("colorizer").setup({ "css", "scss", "html", "javascript" }, {
            RGB = true, -- #RGB hex codes
            RRGGBB = true, -- #RRGGBB hex codes
            RRGGBBAA = true, -- #RRGGBBAA hex codes
            rgb_fn = true, -- CSS rgb() and rgba() functions
            hsl_fn = true, -- CSS hsl() and hsla() functions
            css = true, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
            css_fn = true, -- Enable all CSS *functions*: rgb_fn, hsl_fn
            })
    end,
  },
  {
    "dracula/vim",
    lazy = false,
    name = "Dracula from dracula"
  },
  {
    "loctvl842/monokai-pro.nvim",
    config = function()
      require("monokai-pro").setup()
    end,
  },
  {
    "catppuccin/nvim",
    lazy = true,
    name = "catppuccin",
    opts = {
      integrations = {
        alpha = true,
        cmp = true,
        gitsigns = true,
        illuminate = true,
        indent_blankline = { enabled = true },
        lsp_trouble = true,
        mini = true,
        native_lsp = {
          enabled = true,
          underlines = {
            errors = { "undercurl" },
            hints = { "undercurl" },
            warnings = { "undercurl" },
            information = { "undercurl" },
          },
        },
        navic = { enabled = true },
        neotest = true,
        noice = true,
        notify = true,
        nvimtree = true,
        semantic_tokens = true,
        telescope = true,
        treesitter = true,
        which_key = true,
      },
    },
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = { style = "moon" },
  },
}
