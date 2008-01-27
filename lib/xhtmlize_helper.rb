module XhtmlizeHelper
  #parse the given <tt>html</tt> with Hpricot, and return valid xhtml
  def xhtmlize(html)
    Hpricot(html, :xhtml_strict => true).to_html
  end
end