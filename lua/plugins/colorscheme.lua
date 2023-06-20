return {
  { 'chriskempson/base16-vim' },
  { "shaunsingh/nord.nvim" },
  { 'gbprod/nord.nvim', name = "Nord gbprod" },
  { 'arcticicestudio/nord-vim', name = "Nord by arcticice" },
  { 'nordtheme/vim', name = "Nord by nordtheme" },
  { "lunarvim/Onedarker.nvim" },
  { "AlphaTechnolog/onedarker.nvim", name = "Onedarker by alpha" },
  { "rebelot/kanagawa.nvim" },
  { "bluz71/vim-nightfly-colors" },
  { "ellisonleao/gruvbox.nvim" },
  { "morhetz/gruvbox", name = "Gruvbox by morhetz" },
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
  { 'oxfist/night-owl.nvim', name = "Night Owl by oxfist" },
  { 'olimorris/onedarkpro.nvim' },
  { 'joshdick/onedark.vim' },
  { "kjssad/quantum.vim" },
  { 'artanikin/vim-synthwave84' },
  { "lunarvim/synthwave84.nvim" },
  { 
    'rainglow/vim',
    name = "Rainglow"
  },
  { 'kartikp10/noctis.nvim', name = "Noctis by kartikp10" },
  { 'talha-akram/noctis.nvim', name = "Noctis by talha-akram" },
  { 'liviuschera/noctis' },
  { 'cpea2506/one_monokai.nvim' },
  { 'fratajczak/one-monokai-vim' },
  { 'johnpapa/vscode-winteriscoming' },
  { 'marko-cerovac/material.nvim' },
  { 'projekt0n/github-nvim-theme' },
  { 'mswift42/vim-themes' },
  { 'hzchirs/vim-material' },
  { 'kaicataldo/material.vim' },
  { 'yonlu/omni.vim' },
  { 'EdenEast/nightfox.nvim' },
  { 'getomni/omni' },
  { 'getomni/neovim', name = "Omni nvim" },
  { 'thedenisnikulin/vim-cyberpunk' },
  { 'samueljoli/cyberpunk.nvim' },
  { 'hardhackerlabs/theme-vim', name = 'hardhacker' },
  { 'Shatur/neovim-ayu' },
  { 'ayu-theme/ayu-vim'},
  { 'akai54/2077.nvim' },
  { 'patstockwell/vim-monokai-tasty' },
  { 'dylantmarsh/monokai-vibrant' },
  { 'sthendev/mariana.vim' },
  { 'rose-pine/neovim', name = 'rose-pine' },
  { 'itsjunetime/rose-pine-vim' },
  { 'markvincze/panda-vim' },
  
  {
    'kaiuri/nvim-juliana',
    lazy = false,
    opts = { --[=[ configuration --]=] },
    config = true,
  },
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
