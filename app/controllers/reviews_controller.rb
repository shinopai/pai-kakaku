class ReviewsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_item
  before_action :init_review

  def new
  end

  def create
    user = current_user
    item = Item.find(params[:id])

    @review = Review.new(review_params)
    @review.user_id = user.id
    @review.item_id = item.id

    if @review.save
      redirect_to show_item_path(item), notice: 'レビューを投稿しました'
    else
      render :new, status: :unprocessable_entity
    end
  end


  # private
  def review_params
    params.require(:review).permit(:title, :body, :rate)
  end

  def find_item
    @item = Item.find(params[:id])
  end

  def init_review
    @review = Review.new
  end
end
