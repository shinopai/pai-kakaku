module ItemsHelper
  def check_liked(item_id)
    item = Item.find(item_id)
    res = item.likes.where(user_id: current_user)

    res.any?
  end

  def get_star(rate)
    image_tag('ico_star_active.png', class: "ico") * rate
  end
end
