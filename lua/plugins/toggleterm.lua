return {
  -- Otros plugins...

  -- Toggleterm
  {
    "akinsho/toggleterm.nvim",
    version = "*",  -- Usa la versión estable más reciente
    config = function()
      require("toggleterm").setup({
        size = 20,  -- Altura de la terminal cuando está horizontal
        open_mapping = [[<C-j>]],  -- Tecla para alternar la terminal
        hide_numbers = true,  -- Oculta los números de línea en la terminal
        shade_filetypes = {},  -- Archivos de tipo a oscurecer
        shade_terminals = true,  -- Oscurecer las terminales
        shading_factor = '2',  -- Aumenta la oscuridad de la terminal
        start_in_insert = true,  -- Comienza en modo inserción
        persist_size = true,  -- Mantiene el tamaño al abrir/cerrar
        direction = 'float',  -- Cambia la dirección a 'float' para terminal flotante
        close_on_exit = true,  -- Cierra la terminal cuando el proceso termina
        shell = vim.o.shell,  -- Ruta hacia el shell predeterminado
        float_opts = {
          border = 'rounded',  -- Borde redondeado para una apariencia moderna
          winblend = 3,  -- Transparencia del fondo de la terminal
          highlights = {
            border = "Normal",  -- Color del borde
            background = "Normal",  -- Color de fondo (se eliminará para usar color específico)
          },
        },
        on_open = function(term)
          vim.cmd("startinsert!")  -- Asegúrate de estar en modo inserción al abrir
          -- Cambiar solo el color de fondo de la terminal
          vim.api.nvim_set_hl(0, "Normal", { bg = "#2E1A47", fg = "#EAD1E3" })  -- Fondo morado suave y texto claro
          vim.api.nvim_set_hl(0, "TermNormal", { bg = "#2E1A47", fg = "#EAD1E3" })  -- Para el texto en la terminal
          vim.api.nvim_set_hl(0, "TermCursor", { bg = "#BB86FC", fg = "#2E1A47" })  -- Color del cursor
        end,
      })
    end,
  }
}

