# Name: Jeffrey Sarmiento
require 'net/http'
require 'json'
require 'openssl'

# SSL Fix for macOS
OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

# Full tree dataset URL
url = 'https://data.winnipeg.ca/resource/d3jk-hb6j.json?$limit=306000'
uri = URI(url)
response = Net::HTTP.get(uri)
trees = JSON.parse(response)

ash_count = 0

trees.each do |tree|
  # We check if 'common_name' exists and contains 'ash' (case-insensitive)
  if tree['common_name'] && tree['common_name'].downcase.include?('ash')
    ash_count += 1
  end
end

puts "Total number of Ash trees found in Winnipeg: #{ash_count}"