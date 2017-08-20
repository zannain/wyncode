class CreateCryptocurrencies < ActiveRecord::Migration[5.1]
  def change
    create_table :cryptocurrencies do |t|
      t.string :name
      t.string :symbol
      t.string :rank
      t.string :price_usd
      t.string :percent_change_1h
      t.string :percent_change_24h
      t.string :percent_change_7d

      t.timestamps
    end
  end
end
