class ItemsController < ApplicationController
  before_action :authenticate_user!, only: %i(like_item)

  def show
    @item = Item.find(params[:id])
    @shops = @item.sales
  end

  def like_item
    user = current_user
    item = Item.find(params[:id])

    user.items << item
    redirect_to request.referer
  end
end
