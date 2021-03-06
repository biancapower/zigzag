require 'rails_helper'

RSpec.describe "lists/new", type: :view do
  before(:each) do
    assign(:list, List.new(
      name: "MyString",
      description: "MyText",
      user: nil
    ))
  end

  it "renders new list form" do
    render

    assert_select "form[action=?][method=?]", lists_path, "post" do

      assert_select "input[name=?]", "list[name]"

      assert_select "textarea[name=?]", "list[description]"

      assert_select "input[name=?]", "list[user_id]"
    end
  end
end
