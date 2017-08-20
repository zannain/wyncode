class CryptocurrenciesController < ApplicationController

  def index
  end

  def new
    if params[:name]
     @crypto = Cryptocurrency.find_by_name(crypto_params)
    end
  end

  def show
  end

  def create
  end

  private
  def crypto_params
    params.require(:name)
  end
end

