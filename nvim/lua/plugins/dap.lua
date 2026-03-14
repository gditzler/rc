return {
    -- Python debugging
    {
        "mfussenegger/nvim-dap-python",
        ft = "python",
        dependencies = { "mfussenegger/nvim-dap" },
        config = function()
            require("dap-python").setup(
                "~/.local/share/nvim/mason/packages/debugpy/venv/bin/python"
            )
        end,
    },

    -- Inline variable display while debugging
    {
        "theHamsta/nvim-dap-virtual-text",
        opts = {},
    },
}
