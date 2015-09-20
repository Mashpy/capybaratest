require 'rails_helper'

RSpec.describe "tasklists/index", type: :view do
  before(:each) do
    assign(:tasklists, [
      Tasklist.create!(
        :name => "Name"
      ),
      Tasklist.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of tasklists" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
