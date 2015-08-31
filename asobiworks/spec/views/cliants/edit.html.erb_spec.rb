require 'rails_helper'

RSpec.describe "cliants/edit", :type => :view do
  before(:each) do
    @cliant = assign(:cliant, Cliant.create!(
      :title => "MyString",
      :area => "MyString",
      :name => "MyString",
      :email => "MyString",
      :smallnumber => "MyString",
      :concept => "MyString"
    ))
  end

  it "renders the edit cliant form" do
    render

    assert_select "form[action=?][method=?]", cliant_path(@cliant), "post" do

      assert_select "input#cliant_title[name=?]", "cliant[title]"

      assert_select "input#cliant_area[name=?]", "cliant[area]"

      assert_select "input#cliant_name[name=?]", "cliant[name]"

      assert_select "input#cliant_email[name=?]", "cliant[email]"

      assert_select "input#cliant_smallnumber[name=?]", "cliant[smallnumber]"

      assert_select "input#cliant_concept[name=?]", "cliant[concept]"
    end
  end
end
