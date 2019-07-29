require 'rest-client'

url = 'https://www.bing.com'

r = RestClient.get(url, headers={})
puts r
r = RestClient.post(url, payload, headers={})
puts r
r = RestClient.get url
puts r
r = RestClient.get url, {params: {id: 50, 'foo' => 'bar'}}
puts r
r = RestClient.get 'https://user:password@example.com/private/resource', {accept: :json}
puts r
r = RestClient.post url, {param1: 'one', nested: {param2: 'two'}}
puts r
r = RestClient.post "http://example.com/resource", {'x' => 1}.to_json, {content_type: :json, accept: :json}
puts r
r = RestClient.delete url/2
puts r

raw = RestClient::Request.execute(
    method: :get,
    url: 'http://releases.ubuntu.com/16.04.2/ubuntu-16.04.2-desktop-amd64.iso',
    raw_response: true)
