-- 常用快捷键
--`<C-]>`           CD                         |nvim-tree-api.tree.change_root_to_node()|
--`<C-k>`           Info                       |nvim-tree-api.node.show_info_popup()|
--`a`               Create File Or Directory   |nvim-tree-api.fs.create()|
--`d`               Delete                     |nvim-tree-api.fs.remove()|
--`c`               Copy                       |nvim-tree-api.fs.copy.node()|
--`x`               Cut                        |nvim-tree-api.fs.cut()|
--`u`               Rename: Full Path          |nvim-tree-api.fs.rename_full()|
--`Y`               Copy Relative Path         |nvim-tree-api.fs.copy.relative_path()|
--`r`               Rename                     |nvim-tree-api.fs.rename()|
--`<Tab>`           Open Preview               |nvim-tree-api.node.open.preview()|

-- 默认不开启nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
	sort = {
		sorter = "case_sensitive",
	},
	view = {
		width = 30,
	},
	renderer = {
		group_empty = true,
		hidden_display = "all", --提示什么文件为显示
	},
	filters = {
		enable = true,
		git_ignored = false, --是否隐藏基于.gitignore的文件
		dotfiles = false, --是否隐藏dotfile文件
	},
})
