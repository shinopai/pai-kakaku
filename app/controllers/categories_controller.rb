class CategoriesController < ApplicationController
  def all_items
    @items = Item::where(category_id: params[:id])
    @category_name = Category.find(params[:id]).name
  end
end
