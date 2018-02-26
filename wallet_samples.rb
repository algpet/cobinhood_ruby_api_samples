require 'cobinhood_api'

API_KEY = "put your key here"
api =  CobinhoodApi.new(api_key:API_KEY)

puts "balance changes"
puts api.get_ledger
puts
puts "balance changes for given currency"
puts api.get_ledger("ETH")
puts
puts "history of deposits and withdrawals"
puts api.get_deposit_history
puts api.get_withdrawal_history
puts
puts "history of deposits and withdrawals for given currency"
puts api.get_deposit_history("ETH")
puts api.get_withdrawal_history("ETH")
puts
puts "get deposit or withdrawal by id"
puts api.get_deposit('fa888917-7a05-48e1-bc6d-72b807e439b6')
puts api.get_withdrawal('bfc6f810-0b4e-4d10-80ad-affe7dfdb163')
puts
puts "deposit and withdrawal addresses"
puts api.get_deposit_addresses
puts api.get_withdrawal_addresses
puts
puts "deposit and withdrawal addresses for give currency"
puts api.get_deposit_addresses("ETH")
puts api.get_withdrawal_addresses("ETH")
