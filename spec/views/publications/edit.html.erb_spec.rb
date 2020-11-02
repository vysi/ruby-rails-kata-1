require 'rails_helper'

RSpec.describe "publications/edit", type: :view do
  before(:each) do
    @publication = assign(:publication, Publication.create!(
      :title => "MyString",
      :description => "MyText",
      :isbn => "MyString",
      :publication_type => "MyString"
    ))
  end

  it "renders the edit publication form" do
    render

    assert_select "form[action=?][method=?]", publication_path(@publication), "post" do

      assert_select "input[name=?]", "publication[title]"

      assert_select "textarea[name=?]", "publication[description]"

      assert_select "input[name=?]", "publication[isbn]"

      assert_select "input[name=?]", "publication[publication_type]"
    end
  end
end
