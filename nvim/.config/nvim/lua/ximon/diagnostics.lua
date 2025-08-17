vim.diagnostic.config({
    severity_sort = true,
    float = { border = "rounded", source = "if_many" },
    underline = { severity = vim.diagnostic.severity.ERROR },
    virtual_text = {
        source = "if_many",
        spacing = 2,
        format = function(diagnostic)
            local diagnostic_message = {
                [vim.diagnostic.severity.ERROR] = diagnostic.message,
                [vim.diagnostic.severity.WARN] = diagnostic.message,
                [vim.diagnostic.severity.INFO] = diagnostic.message,
                [vim.diagnostic.severity.HINT] = diagnostic.message,
            }
            return diagnostic_message[diagnostic.severity]
        end,
    },
})

local diagnostic_goto = function(next, severity)
    severity = severity and vim.diagnostic.severity[severity] or nil
    local count = next and 1 or -1

    return function()
        vim.diagnostic.jump({ severity = severity, count = count })
    end
end

vim.keymap.set("n", "]e", diagnostic_goto(true, "ERROR"), { desc = "Next Error" })
vim.keymap.set("n", "[e", diagnostic_goto(false, "ERROR"), { desc = "Prev Error" })
vim.keymap.set("n", "]w", diagnostic_goto(true, "WARN"), { desc = "Next Warning" })
vim.keymap.set("n", "[w", diagnostic_goto(false, "WARN"), { desc = "Prev Warning" })
vim.keymap.set("n", "]i", diagnostic_goto(true, "INFO"), { desc = "Next Information" })
vim.keymap.set("n", "[i", diagnostic_goto(false, "INFO"), { desc = "Prev Information" })
vim.keymap.set("n", "]h", diagnostic_goto(true, "HINT"), { desc = "Next Hint" })
vim.keymap.set("n", "[h", diagnostic_goto(false, "HINT"), { desc = "Prev Hint" })
