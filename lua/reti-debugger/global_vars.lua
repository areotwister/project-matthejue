local utils = require("reti-debugger.utils")
local windows = require("reti-debugger.windows")

local M = {}

M.completed = false
M.opts = {}
M.visible = true
M.handle = nil
M.interpreter_id = nil
M.stdin = nil
M.stdout = nil
M.stderr = nil
M.current_popup = utils.get_key(windows.popups_order, "eprom")

M.registers = ""
M.eprom = ""

M.scrolling_modes = {
  autoscrolling = 1,
  memory_focus = 2
}
M.scrolling_mode = M.scrolling_modes.memory_focus

M.first_focus_over = false

return M
