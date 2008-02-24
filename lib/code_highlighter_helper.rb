module CodeHighlighterHelper
  include Mephisto::Liquid::UrlMethods
  
  def code_highlighter(*languages)
    result = []
    result << stylesheet('SyntaxHighlighter')
    result << javascript('shCore.js')
    languages.each do |language|
      case language
      when 'javascript'
        language = 'JScript'
      when 'csharp'
        language = 'JScript'
      else
        language = language.capitalize
      end
      result << javascript("shBrush#{language}")
    end
    result <<  <<-JS
<script type="text/javascript">
  syntax_highlighter_onload = function() {
    dp.SyntaxHighlighter.ClipboardSwf = '/javascripts/clipboard.swf';
    dp.SyntaxHighlighter.HighlightAll('code');
  }
  window.onload = syntax_highlighter_onload
</script>
    JS
    result
  end
end
