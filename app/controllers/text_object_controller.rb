class TextObjectController < ApplicationController
  def save
    return unless current_user.try(:admin?)
    text_object = TextObject.find_by_key(params[:id])
    text_object.update_attributes(:value => params[:value])

    flash[:notice] = "Updated text attribute"

    respond_to do |format|
      format.json { render :json => text_object.value }
    end
  end
end
