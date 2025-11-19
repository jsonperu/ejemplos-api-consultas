require 'net/http'
require 'json'

TOKEN = '<token>'
BASE_URL = URI('https://api.json.pe/api/dni')

uri = BASE_URL
request = Net::HTTP::Post.new(uri)
request['Authorization'] = "Bearer #{TOKEN}"
request['Content-Type'] = 'application/json'
request.body = JSON.generate(dni: '27427864')

response = Net::HTTP.start(uri.hostname, uri.port, use_ssl: true) do |http|
  http.request(request)
end

raise "Error #{response.code}: #{response.body}" unless response.is_a?(Net::HTTPSuccess)

puts response.body
