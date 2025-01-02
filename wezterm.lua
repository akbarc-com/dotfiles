local wez = require 'wezterm'
local conf = {}

if wez.config_builder then
  conf = wez.config_builder()
end

-- conf.window_decorations = 'RESIZE'

-- conf.default_domain = 'WSL:Ubuntu'
-- conf.default_prog = { 'powershell.exe' }
-- conf.default_prog = { 'C:/Program Files/Git/usr/bin/bash.exe' }
-- conf.default_prog = { 'cmd.exe ', "/k", "C:\\msys64\\msys2_shell.cmd -defterm -here -no-start -ucrt64 -shell bash " }
-- conf.default_prog = { 'cmd.exe ', "/k", "C:\\Program Files\\Microsoft Visual Studio\\2022\\Community\\Common7\\Tools\\VsDevCmd.bat" }
-- conf.default_prog = { 'cmd.exe', "/k", "C:\\Users\\adam\\scoop\\apps\\clink\\1.7.5\\clink_x64.exe", 'inject', '-q' }
-- conf.default_prog = { 'zsh', '-l' }

-- conf.default_cwd = 'C:/any'
-- conf.warn_about_missing_glyphs = false
conf.font = wez.font('Iosevka')
conf.font_rules = {
  {
    intensity = 'Bold',
    italic = false,
    font = wez.font('Iosevka')
  }
}
conf.font_size = 12
conf.use_fancy_tab_bar = false

conf.inactive_pane_hsb = {
  saturation = 1.0,
  brightness = 1.0,
}

conf.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}

conf.keys = {
  {
    key = 'v',
    mods = 'CTRL',
    action = wez.action.PasteFrom 'Clipboard',
  },
  {
    key = 'l',
    mods = 'ALT|CTRL',
    action = wez.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
  },
  {
    key = 'j',
    mods = 'ALT|CTRL',
    action = wez.action.SplitVertical { domain = 'CurrentPaneDomain' },
  },
  {
    key = 'h',
    mods = 'ALT',
    action = wez.action.ActivatePaneDirection 'Left',
  },
  {
    key = 'j',
    mods = 'ALT',
    action = wez.action.ActivatePaneDirection 'Down',
  },
  {
    key = 'k',
    mods = 'ALT',
    action = wez.action.ActivatePaneDirection 'Up',
  },
  {
    key = 'l',
    mods = 'ALT',
    action = wez.action.ActivatePaneDirection 'Right',
  },
  {
    key = 'z',
    mods = 'ALT',
    action = wez.action.TogglePaneZoomState,
  },
  {
    key = 'n',
    mods = 'CTRL|ALT',
    action = wez.action.SpawnTab 'CurrentPaneDomain',
  },
  {
    key = 'w',
    mods = 'CTRL',
    action = wez.action.CloseCurrentTab { confirm = true },
  },
  {
    key = '1',
    mods = 'ALT',
    action = wez.action.ActivateTab(0),
  },
  {
    key = '2',
    mods = 'ALT',
    action = wez.action.ActivateTab(1),
  },
  {
    key = '3',
    mods = 'ALT',
    action = wez.action.ActivateTab(2),
  },
  {
    key = '4',
    mods = 'ALT',
    action = wez.action.ActivateTab(3),
  },
  {
    key = '5',
    mods = 'ALT',
    action = wez.action.ActivateTab(4),
  },
  {
    key = 'y',
    mods = 'ALT|CTRL',
    action = wez.action.ActivateCopyMode,
  },
}

return conf
