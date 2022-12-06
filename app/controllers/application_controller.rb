class ApplicationController < ActionController::Base
  before_action :set_q

  def set_q
    @q = Item.ransack(params[:q])
    logger.debug('ここから')
    logger.debug(params[:q])
    logger.debug('ここまで')
    @items = @q.result
    if params[:q].present? && params[:q][:name_or_description_gt].present?
    @search_word = params[:q][:name_or_description_gt]
  end
end
end
