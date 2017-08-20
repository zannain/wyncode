class AddCryptocurrencyToUser < ActiveRecord::Migration[5.1]
  def change
    add_reference :users, :cryptocurrency, foreign_key: true
  end
end
