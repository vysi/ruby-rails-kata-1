require 'rails_helper'

RSpec.describe "publications/new", type: :view do
  before(:each) do
    assign(:publication, Publication.new(
      :title => "MyString",
      :description => "MyText",
      :isbn => "MyString",
      :publication_type => "MyString"
    ))
  end

  it "renders new publication form" do
    render

    assert_select "form[action=?][method=?]", publications_path, "post" do

      assert_select "input[name=?]", "publication[title]"

      assert_select "textarea[name=?]", "publication[description]"

      assert_select "input[name=?]", "publication[isbn]"

      assert_select "input[name=?]", "publication[publication_type]"
    end
  end
end
