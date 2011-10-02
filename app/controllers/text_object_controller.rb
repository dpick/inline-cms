class TextObjectController < ApplicationController
  def save
    text_object = TextObject.find_by_key(params[:id])

    text_object.update_attributes(:value => params[:value])
  end
end
