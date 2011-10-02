module HomeHelper
  def text_for(key, default_value = "double click here to edit text")
    text_object = TextObject.find_or_create_by_key(key)
    if text_object.new_record?
      puts "it was a new record"
      text_object.update_attributes(:value => default_value) 
    end
    text_object.value
  end
end
