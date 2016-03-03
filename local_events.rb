# your code, here.
require 'json'
require 'httparty'

response = HTTParty.get('https://api.seatgeek.com/2/events?venue.state=MA&datetime_utc.gt=2016-02-01')

data = JSON.parse(response.body)["events"]

# puts data

# puts JSON.generate(data)
data.each do |event|
  puts "#{event["title"]} @ #{event["venue"]["name"]}"
end
