function ColorMyPencils(color)
    color = color or "rose-pine"
    vim.cmd.colorscheme(color)
    
    vim.api.nvim_set_hl(0, "goBlock", { link = "Type" })
    vim.api.nvim_set_hl(0, "goBlock", { fg = "#AABBCC" })

    vim.api.nvim_set_hl(0, "@lsp.type.type.go", { link = "Type" })
    vim.api.nvim_set_hl(0, "@type.go", { link = "Type" })


    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

end

ColorMyPencils()

