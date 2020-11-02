require 'rails_helper'

RSpec.describe "publications/index", type: :view do
  before(:each) do
    assign(:publications, [
      Publication.create!(
        :title => "Title",
        :description => "MyText",
        :isbn => "Isbn",
        :publication_type => "Publication Type"
      ),
      Publication.create!(
        :title => "Title",
        :description => "MyText",
        :isbn => "Isbn",
        :publication_type => "Publication Type"
      )
    ])
  end

  it "renders a list of publications" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Isbn".to_s, :count => 2
    assert_select "tr>td", :text => "Publication Type".to_s, :count => 2
  end
end
