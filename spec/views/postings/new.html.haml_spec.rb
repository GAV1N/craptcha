require 'spec_helper'

describe "postings/new.html.haml" do
  before(:each) do
    assign(:posting, stub_model(Posting,
      :user_id => 1,
      :craigslist_url => "MyString"
    ).as_new_record)
  end

  it "renders new posting form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => postings_path, :method => "post" do
      assert_select "input#posting_user_id", :name => "posting[user_id]"
      assert_select "input#posting_craigslist_url", :name => "posting[craigslist_url]"
    end
  end
end
