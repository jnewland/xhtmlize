module Xhtmlize
  def self.included(base) #:nodoc:
    base.extend(ClassMethods)
  end
  
  #parse the given <tt>html</tt> with Hpricot, and return valid xhtml
  def self.xhtmlize(html)
    Hpricot(html, :xhtml_strict => true).to_html
  end
  
  module ClassMethods #:nodoc:
    def xhtmlize(*attr_names) #:nodoc:
      attr_names.each do |attribute|
        before_save do |record|
          record[attribute] = Xhtmlize.xhtmlize(record[attribute]) if record[attribute].kind_of? String
        end
      end
    end
  end
end