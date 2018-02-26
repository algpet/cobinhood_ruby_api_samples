require 'cobinhood_api'

API_KEY = "put your key here"
api =  CobinhoodApi.new(api_key:API_KEY)

trading_pair = "COB-ETH"
order_size = 250.0
init_price_coef = 3
alter_price_coef = 2
pause = 2

ticker = api.get_ticker(trading_pair)
last = ticker['last_trade_price'].to_f
puts last

order = api.place_order(trading_pair, TRADING_ORDER_SIDE::SIDE_ASK, TRADING_ORDER_TYPE::TYPE_LIMIT, order_size, price=last * init_price_coef)
puts order
if order.nil?
    puts "order not placed. aborting"
    return
end
order_id = order["id"]

sleep(pause)

is_modified = api.modify_order(order_id,size=order_size,price=last * alter_price_coef)
puts "Success ? " + is_modified.to_s
if is_modified
    check_order = api.get_order(order_id)
    puts "modified order " + check_order.to_s
else
    puts "order not modified. aborting"
    return
end

sleep(pause)
is_canceled = api.cancel_order(order_id)
puts "Success ? " + is_canceled.to_s
if is_canceled
    check_order = api.get_order(order_id)
    puts "canceled order " + check_order.to_s
else
    puts "order not canceled :("
end

