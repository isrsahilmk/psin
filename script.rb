require 'net/http'

port = 4567
host = "localhost"
path = "/upload"
data = File.read('/etc/passwd')
req = Net::HTTP::Put.new(path, initheader = { 'Content-Type' => 'text/plain'})
req.body = data
response = Net::HTTP.new(host, port).start {|http| http.request(req) }
puts response.code
