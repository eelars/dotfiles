"""
this theme is mainly based on dracula one :
https://github.com/dracula/qutebrowser
I just simplified and changed some stuffs
"""

colors = {
    'background': '#31363b',
    'background-alt': '#282a36',
    'background-attention': '#181920',
    'background-private': '#b22cff',
    'forground-private': '#ffffff',
    'border': '#282a36',
    'current-line': '#44475a',
    'selection': '#44475a',
    'foreground': '#f8f8f2',
    'foreground-alt': '#e0e0e0',
    'foreground-attention': '#ffffff',
    'comment': '#6272a4',
    'cyan': '#8be9fd',
    'green': '#50fa7b',
    'orange': '#ffb86c',
    'pink': '#ff79c6',
    'purple': '#bd93f9',
    'red': '#ff5555',
    'yellow': '#f1fa8c',
}

spacing = {
    'vertical': 5,
    'horizontal': 5
}

padding = {
    'top': spacing['vertical'],
    'right': spacing['horizontal'],
    'bottom': spacing['vertical'],
    'left': spacing['horizontal']
}

c.colors.completion.category.bg = colors['background']
c.colors.completion.category.border.bottom = colors['border']
c.colors.completion.category.border.top = colors['border']
c.colors.completion.category.fg = colors['foreground']
c.colors.completion.even.bg = colors['background']
c.colors.completion.odd.bg = colors['background-alt']
c.colors.completion.fg = colors['foreground']
c.colors.completion.item.selected.bg = colors['selection']
c.colors.completion.item.selected.border.bottom = colors['selection']
c.colors.completion.item.selected.border.top = colors['selection']
c.colors.completion.item.selected.fg = colors['foreground']
c.colors.completion.match.fg = colors['orange']
c.colors.completion.scrollbar.bg = colors['background']
c.colors.completion.scrollbar.fg = colors['foreground']
c.colors.downloads.bar.bg = colors['background']
c.colors.downloads.error.bg = colors['background']
c.colors.downloads.error.fg = colors['red']
c.colors.downloads.stop.bg = colors['background']
c.colors.downloads.system.bg = 'none'
c.colors.hints.bg = colors['background']
c.colors.hints.fg = colors['purple']
c.hints.border = '1px solid ' + colors['background-alt']
c.colors.hints.match.fg = colors['foreground-alt']
c.colors.keyhint.bg = colors['background']
c.colors.keyhint.fg = colors['purple']
c.colors.keyhint.suffix.fg = colors['selection']
c.colors.messages.error.bg = colors['background']
c.colors.messages.error.border = colors['background-alt']
c.colors.messages.error.fg = colors['red']
c.colors.messages.info.bg = colors['background']
c.colors.messages.info.border = colors['background-alt']
c.colors.messages.info.fg = colors['comment']
c.colors.messages.warning.bg = colors['background']
c.colors.messages.warning.border = colors['background-alt']
c.colors.messages.warning.fg = colors['red']
c.colors.prompts.bg = colors['background']
c.colors.prompts.border = '1px solid ' + colors['background-alt']
c.colors.prompts.fg = colors['cyan']
c.colors.prompts.selected.bg = colors['selection']
c.colors.statusbar.caret.bg = colors['background']
c.colors.statusbar.caret.fg = colors['orange']
c.colors.statusbar.caret.selection.bg = colors['background']
c.colors.statusbar.caret.selection.fg = colors['orange']
c.colors.statusbar.command.bg = colors['background']
c.colors.statusbar.command.fg = colors['pink']
c.colors.statusbar.command.private.bg = colors['background-private']
c.colors.statusbar.command.private.fg = colors['foreground-alt']
c.colors.statusbar.insert.bg = colors['green']
c.colors.statusbar.insert.fg = colors['background']
c.colors.statusbar.normal.bg = colors['background']
c.colors.statusbar.normal.fg = colors['foreground']
c.colors.statusbar.passthrough.bg = colors['background']
c.colors.statusbar.passthrough.fg = colors['orange']
c.colors.statusbar.private.bg = colors['background-private']
c.colors.statusbar.private.fg = colors['foreground-alt']
c.colors.statusbar.progress.bg = colors['background']
c.colors.statusbar.url.error.fg = colors['red']
c.colors.statusbar.url.fg = colors['foreground']
c.colors.statusbar.url.hover.fg = colors['cyan']
c.colors.statusbar.url.success.http.fg = colors['green']
c.colors.statusbar.url.success.https.fg = colors['green']
c.colors.statusbar.url.warn.fg = colors['yellow']
c.statusbar.padding = padding
c.colors.tabs.bar.bg = colors['selection']
c.colors.tabs.even.bg = colors['selection']
c.colors.tabs.even.fg = colors['foreground']
c.colors.tabs.indicator.error = colors['red']
c.colors.tabs.indicator.start = colors['orange']
c.colors.tabs.indicator.stop = colors['green']
c.colors.tabs.indicator.system = 'none'
c.colors.tabs.odd.bg = colors['selection']
c.colors.tabs.odd.fg = colors['foreground']
c.colors.tabs.selected.even.bg = colors['background']
c.colors.tabs.selected.even.fg = colors['foreground']
c.colors.tabs.selected.odd.bg = colors['background']
c.colors.tabs.selected.odd.fg = colors['foreground']
c.tabs.padding = padding
c.tabs.indicator.width = 1
c.tabs.favicons.scale = 1
