class Rightscaler::Account < Rightscaler::Resource
  
  def self.set_auth_cookie(cookie)
    Rightscaler::Resource.headers['cookie'] = cookie
  end
  
  def self.authenticate
    auth_cookie = extract_session_cookie(connection.head(site.to_s + "/login", headers))
    set_auth_cookie(auth_cookie)
  end
  
  private
  
  def self.extract_session_cookie(response)
    candidates = response.to_hash['set-cookie']
    candidate = candidates.detect {|c| c.match(/session_id/) } || candidates.first
    raise "No cookies" if candidate.nil?
    candidate.split("; ").first
  end

end
