vim.g.mapleader = " "
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Highlight when yanking (copying) text",
    group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end,
})
vim.keymap.set("n", "<C-c>", "<Esc>")
vim.keymap.set("i", "<C-c>", "<Esc>")
vim.keymap.set("v", "<C-c>", "<Esc>")
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]])
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

vim.keymap.set("n", "<leader>st", function()
    vim.cmd.vnew()
    vim.cmd.term()
    vim.cmd.wincmd("L")
end)
