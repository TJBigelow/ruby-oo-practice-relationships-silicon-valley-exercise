require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

tom = VentureCapitalist.new('Tom', 150)
jeff = VentureCapitalist.new('Jeff', 172000000000)

pied_piper = Startup.new('Pied Piper', 'Richard Hendricks', 'Compression')
google = Startup.new('google', 'Larry Page', 'Search')
bing = Startup.new('Bing', 'Bill Gates', 'Search')

pied_piper.sign_contract(tom, "Series A", 100)
pied_piper.sign_contract(jeff, "Angel", 10000000)

jeff.offer_contract(google, "Angel", 1010000)
jeff.offer_contract(bing, "Angel", 1100010)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line