-- telescope
vim.keymap.set('n', '<leader>pf',':Telescope find_files<CR>', {})
vim.keymap.set('n', '<leader>pb', ':Telescope buffers<CR>', {})
vim.keymap.set('n', '<leader>ps', ':Telescope live_grep<CR>', {})

vim.keymap.set('n', '<leader>e', ':Neotree toggle<CR>', {})

-- Abrir split horizontal
vim.keymap.set('n', '<leader>sh', ':split<CR>', { desc = 'Split horizontal' })

-- Abrir split vertical
vim.keymap.set('n', '<leader>sv', ':vsplit<CR>', { desc = 'Split vertical' })

-- Navegar entre splits
vim.keymap.set('n', '<leader>j', '<C-w>j', { desc = 'Move down to split' })  -- Mover hacia abajo
vim.keymap.set('n', '<leader>k', '<C-w>k', { desc = 'Move up to split' })    -- Mover hacia arriba
vim.keymap.set('n', '<leader>h', '<C-w>h', { desc = 'Move left to split' })  -- Mover a la izquierda
vim.keymap.set('n', '<leader>l', '<C-w>l', { desc = 'Move right to split' }) -- Mover a la derecha

-- Guardar y salir
-- Guardar archivo en modo normal como si fuera :w
vim.keymap.set('n', '<C-s>', ':w<CR>', { desc = 'Save file' }) 
vim.keymap.set('n', '<C-q>', ':q<CR>', { desc = 'Quit' })               -- Salir de Neovim
vim.keymap.set('n', '<C-wq>', ':wq<CR>', { desc = 'Save and quit' })   -- Guardar y salir

-- Navegación entre buffers
vim.keymap.set('n', '<leader>bd', ':bd<CR>', { desc = 'Delete buffer' })    -- Eliminar buffer

-- Navegación entre ventanas
vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Move to left window' })   -- Mover a la ventana izquierda
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'Move to bottom window' }) -- Mover a la ventana de abajo
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'Move to top window' })    -- Mover a la ventana de arriba
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Move to right window' })  -- Mover a la ventana derecha

-- Copiar y pegar
vim.keymap.set('n', '<leader>y', '"*y', { desc = 'Yank to clipboard' })  -- Copiar al portapapeles
vim.keymap.set('n', '<leader>p', '"*p', { desc = 'Paste from clipboard' }) -- Pegar desde el portapapeles

-- Deshacer y rehacer
vim.keymap.set('n', '<leader>u', 'u', { desc = 'Undo' })  -- Deshacer
vim.keymap.set('n', '<leader>r', '<C-r>', { desc = 'Redo' }) -- Rehacer

vim.keymap.set('n', '<A-j>', ':m .+1<CR>==', { noremap = true, silent = true })
vim.keymap.set('n', '<A-k>', ':m .-2<CR>==', { noremap = true, silent = true })
vim.keymap.set('i', '<A-j>', '<Esc>:m .+1<CR>==gi', { noremap = true, silent = true })
vim.keymap.set('i', '<A-k>', '<Esc>:m .-2<CR>==gi', { noremap = true, silent = true })

-- Mover líneas hacia abajo
vim.keymap.set('v', '<A-j>', ":m '>+1<CR>gv=gv", { noremap = true, silent = true })

-- Mover líneas hacia arriba
vim.keymap.set('v', '<A-k>', ":m '<-2<CR>gv=gv", { noremap = true, silent = true })

vim.keymap.set('n', '<leader>d', 'yyp', { noremap = true, silent = true })
 
