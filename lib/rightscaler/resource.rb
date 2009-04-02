class Rightscaler::Resource < ActiveResource::Base
  cattr_accessor :headers
  
  API_VERSION = "1.0"
  
  self.site = "https://my.rightscale.com/api/acct/"
  self.headers = { "X-API-VERSION" => API_VERSION}
  
  def id
    href && href.split('/').last
  end
  
  def self.account_id=(account_id)
    self.site = self.site.to_s + account_id.to_s
  end
  
  private
  
  def with_status
    response = yield
    status_id = response.instance_variable_get("@header")["location"].first.split('/').last
    Rightscaler::Manage::Status.find(status_id)
  end
  
  def _watch_until(name, state_method, desired_states, failed_states=[], sleep_time=5)
    yield if block_given?
    current_status = send(state_method)
    until desired_states.include?(send(state_method)) || failed_states.include?(send(state_method))
      sleep(sleep_time)
      reload
      unless current_status == send(state_method)
        current_status = send(state_method)
        puts "#{name} is now #{send(state_method)}"
      end
    end
    desired_states.include? send(state_method)
  end
end