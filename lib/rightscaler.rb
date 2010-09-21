require 'active_support'
require 'active_resource'
require "logger"
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))
module Rightscaler
  VERSION = "0.0.4" # updated to match ../VERSION.yml
end

require 'rightscaler/resource'
require 'rightscaler/account'

require 'rightscaler/design'
require 'rightscaler/manage'
require 'rightscaler/manage/deployment'
require 'rightscaler/manage/server'
require 'rightscaler/manage/status'


# At some point in the past, ActiveResource couldn't manage to do a head
# request right; this fixes it.
# https://rails.lighthouseapp.com/projects/8994/tickets/1223-activeresource-head-request-sends-headers-with-a-nil-key#ticket-1223-6
# and https://rails.lighthouseapp.com/projects/8994/tickets/3020-activeresourceexists-does-not-work-at-all
#
# ActiveResource 3.0.0 fixes this problem (it may have been fixed earlier) and
# also has a build_request_headers with arity of 3, so the fix below isn't
# needed and doesn't work.

require 'active_resource/version'

unless ActiveResource::VERSION::MAJOR >= 3
  module ActiveResource
    class Connection
      HTTP_FORMAT_HEADER_NAMES[:head] = 'Content-Type'
      
      def head(path, headers = {})
        request(:head, path, build_request_headers(headers, :head))
      end
    end
  end
end
