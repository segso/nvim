return {
    "andweeb/presence.nvim",
    event = "VeryLazy",
    config = function()
        local function table_length(table)
            local count = 0
            for _ in ipairs(table) do
                count = count + 1
            end
            return count
        end

        local workspace_text

        local function get_workspace_text(name)
            if name == nil then
                return nil
            end

            local errors = table_length(vim.diagnostic.get(0, { severity = vim.diagnostic.severity.ERROR }))
            local warns = table_length(vim.diagnostic.get(0, { severity = vim.diagnostic.severity.WARN }))

            local problems = errors + warns

            return "Working on " .. name .. " - " .. problems .. " problems found"
        end

        local function update()
            local current_buffer = vim.api.nvim_get_current_buf()
            local name = vim.api.nvim_buf_get_name(current_buffer)

            local new_text = get_workspace_text(name)

            if workspace_text == new_text then
                return
            end

            -- Force update
            package.loaded.presence.last_activity.file = ""

            package.loaded.presence:update()

            workspace_text = new_text
        end

        vim.api.nvim_create_autocmd({ "CursorHold", "CursorMoved" }, {
            callback = update,
        })

        require("presence").setup({
            workspace_text = get_workspace_text,
        })
    end,
}
