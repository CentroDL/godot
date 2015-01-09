require 'httparty'
require 'digest/md5'

module Mumbler
  module GravatarHelper
    def gravatar_author_info(email)
      response = gravatar_data(email)
      return nil if response.nil?
      {
        "author_handle"    => response["preferredUsername"],
        "author_thumbnail" => response["thumbnailUrl"]
      }
    end

    def gravatar_data(email)
      entry = HTTParty.get(gravatar_json_link(email))["entry"]
      entry ? entry.first : nil
    end

    def gravatar_id(email)
      # create the md5 hash string
      Digest::MD5.hexdigest(email.downcase)
    end

    def gravatar_json_link(email)
      "http://en.gravatar.com/#{gravatar_id(email)}.json"
    end

    def gravatar_img_link(email, size=nil)
      md5_hash_string = gravatar_id(email)
      size_query = '?s=' + size.to_s if size
      "http://www.gravatar.com/avatar/#{md5_hash_string}#{size_query if size}"
    end
  end
end