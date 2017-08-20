class BottlesController < ApplicationController
  def index
    @bottles = 99.downto 1
  end
end
