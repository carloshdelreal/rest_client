require 'rest-client'

def bing_search(array, expression)
  puts 'hello'
  url = 'https://www.bing.com'
  search = RestClient.get url, params: { q: array }
  res = []
  search.body.scan(expression) { res << $~ }
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
