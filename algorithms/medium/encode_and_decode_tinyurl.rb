# frozen_string_literal: true

require 'digest/sha1'

H = {}.freeze

# Encodes a URL to a shortened URL.
#
# @param {string} longUrl
# @return {string}
def encode(long_url)
  short_url = 'http://tinyurl.com/' + Digest::SHA1.hexdigest("#{long_url}-#{Time.now.to_i}-#{rand}")
  H[short_url] = long_url
  short_url
end

# Decodes a shortened URL to its original URL.
#
# @param {string} shortUrl
# @return {string}
def decode(short_url)
  H[short_url]
end

# Your functions will be called as such:
# decode(encode(url))
