require 'rails_helper'

RSpec.describe "cliants/show", :type => :view do
  before(:each) do
    @cliant = assign(:cliant, Cliant.create!(
      :title => "Title",
      :area => "Area",
      :name => "Name",
      :email => "Email",
      :smallnumber => "Smallnumber",
      :concept => "Concept"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Area/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Smallnumber/)
    expect(rendered).to match(/Concept/)
  end
end
