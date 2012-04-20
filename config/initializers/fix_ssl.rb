# config/initializers/fix_ssl.rb
# 
# Work around errors that look like:
#
#   SSL_connect returned=1 errno=0 state=SSLv3 read server certificate B: certificate verify failed (OpenSSL::SSL::SSLError)

require 'open-uri'
require 'net/https'

module Net
  class HTTP
    alias_method :original_use_ssl=, :use_ssl=
    
    def use_ssl=(flag)
      # Ubuntu
      if File.exists?('/etc/ssl/certs')
        self.ca_path = '/etc/ssl/certs'
      
      self.verify_mode = OpenSSL::SSL::VERIFY_PEER
      self.original_use_ssl = flag
    end
  end
end
