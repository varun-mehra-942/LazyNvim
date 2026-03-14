return {
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      local cmp = require("cmp")
      local compare = require("cmp.config.compare")

      -- 1. Explicitly order the sources
      opts.sources = cmp.config.sources({
        { name = "nvim_lsp", group_index = 1 }, -- Group 1 is evaluated first
        { name = "copilot", group_index = 2 }, -- Group 2 is evaluated second
        { name = "path", group_index = 3 },
        { name = "buffer", group_index = 4 },
      })

      -- 2. Custom Sorting Logic
      opts.sorting = {
        priority_weight = 2,
        comparators = {
          -- This is the "Magic" comparator
          function(entry1, entry2)
            local kind1 = entry1:get_source_name()
            local kind2 = entry2:get_source_name()

            -- If one is LSP and the other is Copilot, LSP always wins
            if kind1 == "nvim_lsp" and kind2 == "copilot" then
              return true
            elseif kind2 == "nvim_lsp" and kind1 == "copilot" then
              return false
            end
          end,

          -- Standard sorting for everything else
          compare.offset,
          compare.exact,
          compare.recently_used,
          compare.score,
          compare.kind,
          compare.sort_text,
          compare.length,
          compare.order,
        },
      }
    end,
  },
}
