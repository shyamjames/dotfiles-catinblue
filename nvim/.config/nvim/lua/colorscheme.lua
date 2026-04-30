vim.o.background = "dark"

local ok_onedark, onedark = pcall(require, "onedark")
if ok_onedark then
    onedark.setup({
        style = "darker",
        colors = {
            bg0 = "#1e1e2e",
            fg = "#cdd6f4",
            red = "#f38ba8",
            green = "#a6e3a1",
            yellow = "#f9e2af",
            blue = "#89b4fa",
            purple = "#cba6f7",
            cyan = "#94e2d5",
            grey = "#7f849c",
        },
    })
    onedark.load()
    return
end

local fallback = "monokai_pro"
local is_ok, _ = pcall(vim.cmd, "colorscheme " .. fallback)
if not is_ok then
    vim.notify("colorscheme " .. fallback .. " not found!")
end
