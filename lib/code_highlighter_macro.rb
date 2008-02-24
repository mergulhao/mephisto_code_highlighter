class CodeHighlighterMacro < FilteredColumn::Macros::Base
  class << self
    include ActionView::Helpers::TagHelper
    
    def filter(attributes, inner_text='', text='')
      content_tag(:pre, h(inner_text.strip), :class => "syntax-highlight:#{attributes[:lang]}")
    end
  end
end
