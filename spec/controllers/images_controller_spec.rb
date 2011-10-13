require 'spec_helper'

describe ImagesController do

  describe "GET 'upload_to_imgur'" do
    it "should be successful" do
      get 'upload_to_imgur'
      response.should be_success
    end
  end

end
