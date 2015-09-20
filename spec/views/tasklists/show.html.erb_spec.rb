require 'rails_helper'

RSpec.describe "tasklists/show", type: :view do
  before(:each) do
    @tasklist = assign(:tasklist, Tasklist.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
