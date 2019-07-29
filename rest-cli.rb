require 'rest-client'

url = 'https://www.bing.com'

r = RestClient.get(url, headers = {})
puts r
r = RestClient.post(url, payload, headers = {})
puts r
r = RestClient.get url
puts r
r = RestClient.get url, params: { id: 50, 'foo' => 'bar' }
puts r
r = RestClient.get 'https://user:password@example.com/private/resource', accept: :json
puts r
r = RestClient.post url, param1: 'one', nested: { param2: 'two' }
puts r
r = RestClient.post 'http://example.com/resource', { 'x' => 1 }.to_json, content_type: :json, accept: :json
puts r
r = RestClient.delete url / 2
puts r

raw = RestClient::Request.execute(
  method: :get,
  url: 'http://releases.ubuntu.com/16.04.2/ubuntu-16.04.2-desktop-amd64.iso',
  raw_response: true
)

def bing_search(array, expression)
  puts 'hello'
  url = 'https://www.bing.com'
  search = RestClient.get url, params: { q: array }
  res = []
  search.body.scan(expression) { res << $LAST_MATCH_INFO }
  i = 0
  puts 'Results'
  res.each do |x|
    puts x
  end
end

regex = %r{<h2><a.*?href="(?<link>.*?)".*?h=.*?>(?<text>.*?)</a.*?>}

puts 'welcome to bing'

puts 'what do you want to search?'
array = gets.chomp

bing_search(array, regex)
