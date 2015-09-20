require 'rails_helper'

RSpec.describe "tasklists/edit", type: :view do
  before(:each) do
    @tasklist = assign(:tasklist, Tasklist.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit tasklist form" do
    render

    assert_select "form[action=?][method=?]", tasklist_path(@tasklist), "post" do

      assert_select "input#tasklist_name[name=?]", "tasklist[name]"
    end
  end
end
