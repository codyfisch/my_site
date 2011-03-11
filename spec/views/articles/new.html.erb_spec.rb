require 'spec_helper'

describe "articles/new.html.erb" do
  before(:each) do
    assign(:article, stub_model(Article,
      :title => "MyString",
      :location => "MyString",
      :excerpt => "MyString",
      :body => "MyText"
    ).as_new_record)
  end

  it "renders new article form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => articles_path, :method => "post" do
      assert_select "input#article_title", :name => "article[title]"
      assert_select "input#article_location", :name => "article[location]"
      assert_select "input#article_excerpt", :name => "article[excerpt]"
      assert_select "textarea#article_body", :name => "article[body]"
    end
  end
end
