require 'spec_helper'

describe "postings/show.html.haml" do
  before(:each) do
    @posting = assign(:posting, stub_model(Posting,
      :user_id => 1,
      :craigslist_url => "Craigslist Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Craigslist Url/)
  end
end
