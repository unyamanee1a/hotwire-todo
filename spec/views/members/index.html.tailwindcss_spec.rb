require 'rails_helper'

RSpec.describe "members/index", type: :view do
  before(:each) do
    assign(:members, [
      Member.create!(
        name: "Name",
        email: "Email"
      ),
      Member.create!(
        name: "Name",
        email: "Email"
      )
    ])
  end

  it "renders a list of members" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Email".to_s), count: 2
  end
end
