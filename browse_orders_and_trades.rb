require 'cobinhood_api'

API_KEY = "put your key here"
api =  CobinhoodApi.new(api_key:API_KEY)

puts "open orders"
puts api.get_orders("COB-ETH")
puts
puts "past orders"
puts api.get_order_history("COB-ETH")
puts
puts "some single order .. copy-paste some order id fron get_orders or get_order_history to get some results"
puts api.get_order("509650a9-7ad7-4c6f-805e-c435e288c554")
puts
puts "order trades .. copy-paste some order id fron get_orders or get_order_history to get some results"
puts api.get_order_trades("509650a9-7ad7-4c6f-805e-c435e288c554")
puts
puts "all recent trades"
puts api.get_trade_history
puts
puts "some single trade .. copy-paste trade_id from get_trade_history to get some results"
puts api.get_trade("333438c2-53be-4535-b5b6-f05419299934")
puts
puts "all recent trades for given trading pair"
puts api.get_trade_history("COB-ETH")