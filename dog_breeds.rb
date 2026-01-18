# Name: Jeffrey Sarmiento
require 'net/http'
require 'json'
require 'openssl'

# SSL Fix for macOS
OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

url = 'https://dog.ceo/api/breeds/list/all'
uri = URI(url)
response = Net::HTTP.get(uri)
dog_breeds = JSON.parse(response)

# Accessing the 'message' key where the breeds are stored
dog_breeds['message'].each do |breed, sub_breeds|
  puts "* #{breed.capitalize}"
  sub_breeds.each do |sub|
    puts "  * #{sub.capitalize}"
  end
end