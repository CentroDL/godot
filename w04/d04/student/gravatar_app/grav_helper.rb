require 'digest/md5'

module GravHelper

  def generate_gravatar_hash(email)
    email_address = email.downcase
    Digest::MD5.hexdigest(email_address)

  end

end

