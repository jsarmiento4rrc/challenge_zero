require 'net/http'
require 'json'

# Fetching the full dataset (306,000 trees)
url = 'https://data.winnipeg.ca/resource/d3jk-hb6j.json?$limit=306000'
uri = URI(url)
response = Net::HTTP.get(uri)
trees = JSON.parse(response)

ash_count = 0

trees.each do |tree|
  # Check if the common name includes the word "ash"
  if tree['common_name'] && tree['common_name'].downcase.include?('ash')
    ash_count += 1
  end
end

puts "Total number of Ash trees in Winnipeg: #{ash_count}"