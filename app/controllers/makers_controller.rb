class MakersController < ApplicationController
  def index
    @makers = Maker.all
  end

  def all_items
    @items = Item::where(maker_id: params[:id])
    @maker_name = Maker.find(params[:id]).name
  end
end
