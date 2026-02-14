-- lazy.nvim
return {
  "GustavEikaas/easy-dotnet.nvim",
  ft = { "cs", "fsharp", "vb", "sln", "csproj" },
  dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim" },
  config = function()
    require("easy-dotnet").setup()
  end,
}
