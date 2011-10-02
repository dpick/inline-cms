require 'spec_helper'

describe TextObjectController do
  before :each do
    @text_object = TextObject.new
    TextObject.stub!(:find_by_key).and_return(@text_object)
  end

  it "should return the value of the text object" do
    @text_object.key = 'key'
    @text_object.value = 'value'

    post :save, { :id => 1, :value => 'value' }

    response.content_type.should == 'text/html'
  end
end
