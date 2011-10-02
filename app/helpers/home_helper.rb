module HomeHelper
  def text_for(key, default_value = "double click here to edit text")
    text_object = TextObject.find_or_create_by_key(key)

    text_object.update_attributes(:value => default_value) if text_object.value.nil?

    text_object.value
  end
end
