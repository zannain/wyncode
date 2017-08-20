class Cryptocurrency < ApplicationRecord
  belongs_to :user

  def self.find_by_name(name)
    @lookup_crypto = HTTParty.get("https://api.coinmarketcap.com/v1/ticker/#{name}")
  end
end




