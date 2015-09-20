require 'rails_helper'

RSpec.describe "tasklists/new", type: :view do
  before(:each) do
    assign(:tasklist, Tasklist.new(
      :name => "MyString"
    ))
  end

  it "renders new tasklist form" do
    render

    assert_select "form[action=?][method=?]", tasklists_path, "post" do

      assert_select "input#tasklist_name[name=?]", "tasklist[name]"
    end
  end
end
