gem 'hpricot', '=0.5'
require 'hpricot'
require 'xhtmlize'
ActiveRecord::Base.send(:include, Xhtmlize)
require 'xhtmlize_helper'
ActionView::Base.send(:include, XhtmlizeHelper)