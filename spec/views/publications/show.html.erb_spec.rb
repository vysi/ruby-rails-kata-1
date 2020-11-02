require 'rails_helper'

RSpec.describe "publications/show", type: :view do
  before(:each) do
    @publication = assign(:publication, Publication.create!(
      :title => "Title",
      :description => "MyText",
      :isbn => "Isbn",
      :publication_type => "Publication Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Isbn/)
    expect(rendered).to match(/Publication Type/)
  end
end
