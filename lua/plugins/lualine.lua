return  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = function()
      return {
         	options = {
		    icons_enabled = true,
		    theme = 'dracula',
		  },
		  sections = {
		    lualine_a = {
		      {
		        'filename',
		        path = 1,
		      }
		    }
		  }
      }
    end,
}