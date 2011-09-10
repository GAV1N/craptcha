require 'spec_helper'

describe "callers/edit.html.haml" do
  before(:each) do
    @caller = assign(:caller, stub_model(Caller,
      :phone => "MyString"
    ))
  end

  it "renders the edit caller form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => callers_path(@caller), :method => "post" do
      assert_select "input#caller_phone", :name => "caller[phone]"
    end
  end
end
