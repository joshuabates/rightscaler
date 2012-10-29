require 'activesupport'
require 'activeresource'
require "logger"
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))
module Rightscaler
  VERSION = "0.1.3"
end

require 'rightscaler/resource'
require 'rightscaler/account'

require 'rightscaler/design'
require 'rightscaler/manage'
require 'rightscaler/manage/deployment'
require 'rightscaler/manage/server'
require 'rightscaler/manage/status'

# ActiveResource can't manage to do a head request right, this fixes it
# https://rails.lighthouseapp.com/projects/8994/tickets/1223-activeresource-head-request-sends-headers-with-a-nil-key#ticket-1223-6
module ActiveResource
  class Connection
    HTTP_FORMAT_HEADER_NAMES[:head] = 'Content-Type'
    
    def head(path, headers = {})
      request(:head, path, build_request_headers(headers, :head))
    end
  end
end
