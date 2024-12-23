vim.g.mapleader = " "

local keymap = vim.keymap

-- ---------- 插入模式 ---------- ---
keymap.set("i", "jl", "<ESC>")

-- ---------- 视觉模式 ---------- ---
-- 单行或多行移动
--keymap.set("v", "J", ":m '>+1<CR>gv=gv")
--keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- ---------- 正常模式 ---------- ---
-- 窗口
keymap.set("n", "<leader>s", "<C-w>v") -- 水平新增窗口 
keymap.set("n", "<leader>v", "<C-w>s") -- 垂直新增窗口
keymap.set("n", "<leader>d", ":q<CR>") -- 删除当前窗口

-- ---------- 插件 ---------- ---
-- bufferline
keymap.set("n", "<M-l>", ":bnext<CR>") -- 下一个标签页
keymap.set("n", "<M-S-l>", ":BufferLineMoveNext<CR>") -- 将当前标签页向后移动
keymap.set("n", "<M-h>", ":bprevious<CR>") -- 上一个标签页
keymap.set("n", "<M-S-h>", ":BufferLineMovePrev<CR>") -- 将当前标签页向前移动
keymap.set("n", "<M-d>", ":BufferLineCloseOthers<CR>") -- 关闭其他标签页
-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- 打开/关闭目录
-- telescope
local builtin = require('telescope.builtin')
keymap.set('n', '<C-p>', builtin.find_files, {})
keymap.set('n', '<C-f>', builtin.live_grep, {})
keymap.set('n', 'gd', builtin.lsp_definitions, {}) --定义
keymap.set('n', 'gi', builtin.lsp_implementations, {})
keymap.set('n', 'gr', builtin.lsp_references, {}) --引用的位置列表
keymap.set('n', 'tg', builtin.tags, {}) --通过tag文件查找标签
-- translator
keymap.set("n", "tl", ":TranslateW<CR>")
-- tagbar
keymap.set("n", "<leader>w", ":Tagbar<CR>") --打开/关闭函数和变量列表
-- nvim-dap 代码调试
keymap.set('n', ';c', function() require('dap').continue() end) --启动调试/运行到下一个断点
keymap.set('n', ';rc', function() require('dap').restart() end) --重启调试并运行到第一个断点处
keymap.set('n', ';t', function() require('dap').terminate() end)  --终止调试
keymap.set('n', ';b', function() require('dap').toggle_breakpoint() end) --打/取消断点
keymap.set('n', ';db', function() require('dap').clear_breakpoints() end) --取消所有断点
keymap.set('n', ';n', function() require('dap').step_over() end) --单步调试-不进入函数
keymap.set('n', ';s', function() require('dap').step_into() end) --单步调试-进入函数
keymap.set('n', ';;', function() require('dap').repl.toggle() end) -- 打开debug console

