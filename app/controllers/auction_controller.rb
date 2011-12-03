class AuctionController < ApplicationController
  def index
    @items = Item.all
  end

end
