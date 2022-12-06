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
    redirect_to request.referer, notice: 'お気に入りに追加しました'
  end

  def remove_liked_item
    res = Like.where(item_id: params[:id]).find_by(user_id: current_user.id)
    res.destroy

    redirect_to request.referer, notice: 'お気に入りを解除しました'
  end

  def search
  end
end
