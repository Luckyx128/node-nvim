
return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
 {
    "nvimtools/none-ls.nvim", -- novo nome do null-ls
    event = "VeryLazy",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvimtools/none-ls-extras.nvim",
    },
    config = function()
      require "custom.plugins.null-ls"
    end,
  },
  {
    "lewis6991/gitsigns.nvim",
  },
   {
    "sindrets/diffview.nvim",
    event = "VeryLazy",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = true,
  },
  {
    "L3MON4D3/LuaSnip",
    config = function()
      require("custom.configs.luasnip")
    end,
  },

  --{
  --  "frankroeder/parrot.nvim",
  --  event = 'VeryLazy',
  --  config = function()
  --    require("parrot").setup({})
  --  end,
  --},

  {
    "supermaven-inc/supermaven-nvim",
    event = "InsertEnter", -- carrega só quando começar a digitar
    config = function()

      require("supermaven-nvim").setup({
        keymaps = {
          accept_suggestion = "<Tab>",
          clear_suggestion = "<C-]>",
        },
      })
    end,
  },

 -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
  --

{
  "frankroeder/parrot.nvim",
  event = 'VeryLazy',
    dependencies = { 'ibhagwan/fzf-lua', 'nvim-lua/plenary.nvim' },
  -- optionally include "folke/noice.nvim" or "rcarriga/nvim-notify" for beautiful notifications
  config = function()
    require("parrot").setup {
      -- Providers must be explicitly added to make them available.
      providers = {
        anthropic = {
          api_key = os.getenv "ANTHROPIC_API_KEY",
        },
        gemini = {
          api_key = os.getenv "GEMINI_API_KEY",
        },
        groq = {
          api_key = os.getenv "GROQ_API_KEY",
        },
        mistral = {
          api_key = os.getenv "MISTRAL_API_KEY",
        },
        pplx = {
          api_key = os.getenv "PERPLEXITY_API_KEY",
        },
        -- provide an empty list to make provider available (no API key required)
        ollama = {},
        openai = {
          api_key = os.getenv "OPENAI_API_KEY",
        },
        github = {
          api_key = os.getenv "GITHUB_TOKEN",
        },
        nvidia = {
          api_key = os.getenv "NVIDIA_API_KEY",
        },
        xai = {
          api_key = os.getenv "XAI_API_KEY",
        },
      },
    }
  end,
}}
