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
    response.to_hash["set-cookie"].each do |cookie|
      cookie = cookie.split("; ").first
      return cookie if cookie =~ /session_id/
    end
  end

end