require("gitsigns").setup({
  on_attach = function(bufnr)
    local gitsigns = require("gitsigns")

    -- Next hunk
    vim.keymap.set("n", "]c", function()
      if vim.wo.diff then
        vim.cmd.normal({"]c", bang = true})
      else
        gitsigns.nav_hunk("next")
      end
    end)

    -- Previous hunk
    vim.keymap.set("n", "[c", function()
      if vim.wo.diff then
        vim.cmd.normal({"[c", bang = true})
      else
        gitsigns.nav_hunk("prev")
      end
    end)

    -- Stage hunk
    vim.keymap.set("n", "<leader>hs", gitsigns.stage_hunk, { desc = "Stage hunk" })
    vim.keymap.set("v", "<leader>hs", function()
      gitsigns.stage_hunk({ vim.fn.line("."), vim.fn.line("v") })
    end, { desc = "Stage visual hunk" })

    -- Reset hunk
    vim.keymap.set("n", "<leader>hr", gitsigns.reset_hunk, { desc = "Reset hunk" })
    vim.keymap.set("v", "<leader>hr", function()
      gitsigns.reset_hunk({ vim.fn.line("."), vim.fn.line("v") })
    end, { desc = "Reset visual hunk" })

    -- Stage buffer
    vim.keymap.set("n", "<leader>hS", gitsigns.stage_buffer, { desc = "Stage buffer" })

    -- Reset buffer
    vim.keymap.set("n", "<leader>hR", gitsigns.reset_buffer, { desc = "Reset buffer" })

    -- Preview hunk
    vim.keymap.set("n", "<leader>hp", gitsigns.preview_hunk, { desc = "Preview hunk" })
    vim.keymap.set("n", "<leader>hi", gitsigns.preview_hunk_inline, { desc = "Preview hunk inline" })

    -- Blame
    vim.keymap.set("n", "<leader>hb", function()
      gitsigns.blame_line({ full = true })
    end, { desc = "Blame line" })

    vim.keymap.set("n", "<leader>hd", gitsigns.diffthis, { desc = "Diffthis" })
    vim.keymap.set("n", "<leader>hD", function()
      gitsigns.diffthis("~")
    end, { desc = "Diffthis" })

    vim.keymap.set("n", "<leader>hq", gitsigns.setqflist, { desc = "Set quickfixlist" })
    vim.keymap.set("n", "<leader>hQ", function()
      gitsigns.setqflist("all")
    end, { desc = "Set quickfixlist" })

    vim.keymap.set("n", "<leader>tb", gitsigns.toggle_current_line_blame, { desc = "Toggle current line blame" })
    vim.keymap.set("n", "<leader>tw", gitsigns.toggle_word_diff, { desc = "Toggle word diff" })

    vim.keymap.set({"o", "x"}, "ih", gitsigns.select_hunk, { desc = "Select hunk" })
  end
})
