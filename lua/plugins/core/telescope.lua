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
            local harpoon = require "harpoon"

            -- basic telescope configuration
            local conf = require("telescope.config").values
            local function toggle_telescope(harpoon_files)
              local file_paths = {}

              for _, item in ipairs(harpoon_files.items) do
                table.insert(file_paths, item.value)
              end

              local make_finder = function()
                local paths = {}

                for _, item in ipairs(harpoon_files.items) do
                  table.insert(paths, item.value)
                end

                return require("telescope.finders").new_table {
                  results = paths,
                }
              end

              require("telescope.pickers")
                  .new({}, {
                    prompt_title = "Harpoon",
                    finder = require("telescope.finders").new_table {
                      results = file_paths,
                    },
                    previewer = conf.file_previewer {},
                    sorter = conf.generic_sorter {},
                    attach_mappings = function(prompt_buffer_number, map)
                      -- The keymap you need
                      map("i", "<c-d>", function()
                        local state = require "telescope.actions.state"
                        local selected_entry = state.get_selected_entry()
                        local current_picker = state.get_current_picker(prompt_buffer_number)

                        -- This is the line you need to remove the entry
                        harpoon:list():remove(selected_entry)
                        current_picker:refresh(make_finder())
                      end)

                      return true
                    end,
                  })
                  :find()
            end

            vim.keymap.set("n", "<leader>hl", function()
              toggle_telescope(harpoon:list())
            end, { desc = "harpoon list" })
          end,
        },
      },
      opts = function()
        local config = require "nvchad.configs.telescope"
        local actions = require "telescope.actions"

        config.defaults.path_display = { "smart" }
        config.defaults.mappings = {
          i = {
            ["<C-j>"] = actions.move_selection_next,
            ["<C-k>"] = actions.move_selection_previous,
            ["<C-q>"] = actions.smart_send_to_qflist + actions.open_qflist,
            ["<C-w>"] = actions.which_key,
          },
          n = {
            ["q"] = actions.close,
          },
        }
        config.extensions = {
          fzf = {
            fuzzy = true,
            override_generic_sorter = true,
            override_file_sorter = true,
            case_mode = "smart_case",
          },
        }

        return config
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
