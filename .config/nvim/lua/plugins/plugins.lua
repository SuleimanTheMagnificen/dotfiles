return {
  --  { "neoclide/coc.nvim", branch = "release" },
  {
    "L3MON4D3/LuaSnip",
    -- follow latest release.
    version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
    -- install jsregexp (optional!).
    build = "make install_jsregexp",
    dependencies = { "rafamadriz/friendly-snippets" },
  },
  { "rafamadriz/friendly-snippets" },
  {
    "numToStr/Comment.nvim",
    opts = {
      -- add any options here
    },
  },
  {
    "derektata/lorem.nvim",
    config = function()
      require("lorem").opts({
        sentence_length = "mixed", -- using a default configuration
        comma_chance = 0.3, -- 30% chance to insert a comma
        max_commas = 2, -- maximum 2 commas per sentence
        debounce_ms = 200, -- default debounce time in milliseconds
      })
    end,
  },
  {
    "nvim-telescope/telescope.nvim",
    tag = "v0.2.0",
    dependencies = { "nvim-lua/plenary.nvim" },
  },
  {
    "snacks.nvim",
    opts = {
      dashboard = {
        preset = {
          pick = function(cmd, opts)
            return LazyVim.pick(cmd, opts)()
          end,
          header = [[
        
                                                                   
▀███▄   ▀███▀███▀▀▀███  ▄▄█▀▀██▄ ▀████▀   ▀███▀████▀████▄     ▄███▀
  ███▄    █   ██    ▀█▄██▀    ▀██▄ ▀██     ▄█   ██   ████    ████  
  █ ███   █   ██   █  ██▀      ▀██  ██▄   ▄█    ██   █ ██   ▄█ ██  
  █  ▀██▄ █   ██████  ██        ██   ██▄  █▀    ██   █  ██  █▀ ██  
  █   ▀██▄█   ██   █  ▄█▄      ▄██   ▀██ █▀     ██   █  ██▄█▀  ██  
  █     ███   ██     ▄███▄    ▄██▀    ▄██▄      ██   █  ▀██▀   ██  
▄███▄    ██ ▄██████████ ▀▀████▀▀       ██     ▄████▄███▄ ▀▀  ▄████▄
                                                                   
                                                                   
           
 ]],
        },
      },
    },
  },
  { "nvim-mini/mini.snippets" },
  -- { "abeldekat/cmp-mini-snippets" },
  -- { "hrsh7th/nvim-cmp" },
}
