require 'spec_helper'

describe "postings/index.html.haml" do
  before(:each) do
    assign(:postings, [
      stub_model(Posting,
        :user_id => 1,
        :craigslist_url => "Craigslist Url"
      ),
      stub_model(Posting,
        :user_id => 1,
        :craigslist_url => "Craigslist Url"
      )
    ])
  end

  it "renders a list of postings" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Craigslist Url".to_s, :count => 2
  end
end
