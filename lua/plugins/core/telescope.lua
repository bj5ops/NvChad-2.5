return function(activate)
  local plugin = {}

  if activate then
    plugin = {
      "nvim-telescope/telescope.nvim",
      dependencies = {
        {
          "allaman/emoji.nvim",
          version = "1.0.0", -- optionally pin to a tag
          ft = "markdown",   -- adjust to your needs
          dependencies = {
            -- optional for nvim-cmp integration
            "hrsh7th/nvim-cmp",
            -- optional for telescope integration
            "nvim-telescope/telescope.nvim",
          },
          opts = {
            -- default is false
            enable_cmp_integration = true,
          },
          config = function(_, opts)
            require("emoji").setup(opts)
            -- optional for telescope integration
            require("telescope").load_extension "emoji"
          end,
        },
        {
          "ThePrimeagen/harpoon",
          branch = "harpoon2",
          dependencies = { "nvim-lua/plenary.nvim" },
          keys = function()
            require("plugins.core.mappings.harpoon")
          end,
        },
      },
      opts = function()
        require("plugins.core.configs.telescope")
      end,
    }
  else
    plugin = {
      "nvim-telescope/telescope.nvim",
      enabled = false,
    }
  end

  return plugin
end
