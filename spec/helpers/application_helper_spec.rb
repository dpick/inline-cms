require 'spec_helper'

describe ApplicationHelper do
  before :each do
    helper.extend(ApplicationHelper)

    @user = mock('user', :admin? => false)    
    helper.stub!(:current_user).and_return(@user)
  end

  it "should create a new object if it doesn't exist already" do
    helper.text_for("key").should == "<div>double click here to edit text</div>"
  end

  it "should not be editable if the current user is not an admin" do
    @user = mock('user', :admin? => false)
    helper.stub!(:current_user).and_return(@user)
    helper.text_for("key").should == "<div>double click here to edit text</div>"
  end

  it "should not be editable if there is no current user" do
    @user = nil
    helper.stub!(:current_user).and_return(@user)
    helper.text_for("key").should == "<div>double click here to edit text</div>"
  end

  it "should be editable if the current user is an admin" do
    @user = mock('user', :admin? => true)
    helper.stub!(:current_user).and_return(@user)
    helper.text_for("key").should == "<div class=\"edit_area\" id=\"key\">double click here to edit text</div>"
  end
end
