$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

require 'iconv'

unless defined?(ActiveSupport)
  require 'active_support'
end

require 'erb'

module Qadmin
  VERSION = '0.2.3'
end

%w{
  configuration
  helper
  overlay
  page_titles
  templates
  controller
}.each {|lib| require "qadmin/#{lib}" }
