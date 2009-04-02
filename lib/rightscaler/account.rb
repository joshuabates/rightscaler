class Rightscaler::Account < Rightscaler::Resource
  
  def self.authenticate
    auth_cookie = extract_session_cookie(connection.head(site.to_s + "/login", headers))
    Rightscaler::Resource.headers['cookie'] = auth_cookie
  end
  
  private
  
  def self.extract_session_cookie(response)
    response.to_hash["set-cookie"].each do |cookie|
      cookie = cookie.split("; ").first
      return cookie if cookie =~ /session_id/
    end
  end

end