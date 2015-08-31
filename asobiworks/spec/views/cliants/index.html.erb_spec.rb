require 'rails_helper'

RSpec.describe "cliants/index", :type => :view do
  before(:each) do
    assign(:cliants, [
      Cliant.create!(
        :title => "Title",
        :area => "Area",
        :name => "Name",
        :email => "Email",
        :smallnumber => "Smallnumber",
        :concept => "Concept"
      ),
      Cliant.create!(
        :title => "Title",
        :area => "Area",
        :name => "Name",
        :email => "Email",
        :smallnumber => "Smallnumber",
        :concept => "Concept"
      )
    ])
  end

  it "renders a list of cliants" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Area".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Smallnumber".to_s, :count => 2
    assert_select "tr>td", :text => "Concept".to_s, :count => 2
  end
end
