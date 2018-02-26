require 'cobinhood_api'

api = CobinhoodApi.new
puts "System info"
puts api.get_system_info
puts
puts "System time"
puts api.get_system_time
puts
puts "List of available currencies with some useful metadata"
puts api.get_market_currencies
puts
puts "List of available trading pairs with some useful metadata"
puts api.get_market_trading_pairs
puts
puts "market stats"
puts api.get_market_stats
puts
puts "last prices"
puts api.get_all_last_prices
puts "ticker"
puts api.get_ticker("COB-ETH")
puts
puts "orderbook for given pair"
puts api.get_market_order_book("COB-ETH")
puts
puts "just top 2 for asks and bids from orderbook"
puts api.get_market_order_book("COB-ETH",2)
puts
puts "recent trades"
puts api.get_recent_trades("COB-ETH")
puts
puts "candles for given trading pair"
puts api.get_chart_candles("COB-ETH","1m")
puts
puts "chart candles for given trading time and timeframe"
puts api.get_chart_candles("COB-ETH","1m",start_time=1519518660000,end_time=1519519080000)
puts
puts "chart candles of desired size"
puts api.get_chart_candles("COB-ETH",CHART_CANDLE_TIMEFRAMES::TIMEFRAME_3_HOURS)


