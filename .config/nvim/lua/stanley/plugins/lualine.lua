return {
    "nvim-lualine/lualine.nvim",
    dependencies = { { "kyazdani42/nvim-web-devicons", opt = true } },
    config = function()
        local status, lualine = pcall(require, "lualine")
        if (not status) then return end

        lualine.setup {
            options = {
                icons_enabled = true,
                --material for rose pine
                theme = 'tokyonight',
                section_separators = { left = '', right = '' },
                component_separators = { left = '', right = '' },
                --[[
   component_separators = '',
    section_separators = { left = '', right = '' },
    ----]]
                disabled_filetypes = { 'netrw' }
            },
            sections = {
                lualine_a = {
                    --{ 'mode', separator = { left = '' }, right_padding = 2 },
                    { 'mode', separator = { left = '' }, right_padding = 2 },
                },
                lualine_b = { 'filename', 'branch' },
                lualine_c = { 'fileformat' },
                lualine_x = {},
                lualine_y = { 'filetype', 'progress' },
                lualine_z = {
                    --{ 'location', separator = { right = '' }, left_padding = 2 },
                    { 'location', separator = { right = '' }, left_padding = 2 },
                },
            },
            inactive_sections = {
                lualine_a = {},
                lualine_b = {},
                lualine_c = { {
                    'filename',
                    file_status = true, -- displays file status (readonly status, modified status)
                    path = 1            -- 0 = just filename, 1 = relative path, 2 = absolute path
                } },
                lualine_x = { 'location' },
                lualine_y = {},
                lualine_z = {}
            },
            tabline = {},
            extensions = { 'fugitive' }
        }
    end
}
