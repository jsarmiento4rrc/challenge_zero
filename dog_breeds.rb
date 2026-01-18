require 'net/http'
require 'json'

url = 'https://dog.ceo/api/breeds/list/all'
uri = URI(url)
response = Net::HTTP.get(uri)
dog_breeds = JSON.parse(response) # Convert JSON data into Ruby data.

# Access the 'message' hash where breeds are stored
dog_breeds['message'].each do |breed, sub_breeds|
  puts "* #{breed.capitalize}"
  # Nested loop for sub-breeds
  sub_breeds.each do |sub|
    puts "  * #{sub.capitalize}"
  end
end