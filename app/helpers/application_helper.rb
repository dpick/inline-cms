module ApplicationHelper
  def text_for(key, default_value = "double click here to edit text")
    text_object = TextObject.find_or_create_by_key(key)

    text_object.update_attributes(:value => default_value) if text_object.value.nil?

    return content_tag(:div, text_object.value) if current_user.nil? || !current_user.admin?

    content_tag(:div, text_object.value, :class => 'edit_area', :id => text_object.key)
  end
end
