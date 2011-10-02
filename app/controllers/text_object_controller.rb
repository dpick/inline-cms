class TextObjectController < ApplicationController
  def save
    text_object = TextObject.find_by_key(params[:id])
    text_object.update_attributes(:value => params[:value])

    respond_to do |format|
      format.json { render :json => text_object.value }
    end
  end
end
