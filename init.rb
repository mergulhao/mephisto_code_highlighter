require 'code_highlighter_macro'
FilteredColumn.macros[:jscode_macro] = CodeHighlighterMacro

Liquid::Template.register_filter CodeHighlighterHelper

