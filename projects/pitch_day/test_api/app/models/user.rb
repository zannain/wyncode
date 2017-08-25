class User < ApplicationRecord

  APIKEY="3Nuh7lndHmAyuvm2"
  APISECRET="JNzypIV4z12zhGB80iuWuVjEXmxqAnCd"
  client = Coinbase::Wallet::Client.new(
    api_key: api_key,
    api_secret: api_secret,
    CB_VERSION: '2017-08-22')
    
    def self.call_api 
      client.accounts.each do |account|
        balance = account.balance
        puts "#{account.name}: #{balance.amount} #{balance.currency}"
        puts account.transactions
      end
    end

    def create_wallet
      account = client.create_account(name: "New Wallet")
      balance = account.balance
      puts "#{account.name}: #{balance.amount} #{balance.currency}"
    end


end
