require 'rails_helper'

RSpec.describe "budgets/edit", type: :view do
  before(:each) do
    @budget = assign(:budget, Budget.create!(
      budget_name: "MyString",
      budget_amount: "9.99"
    ))
  end

  it "renders the edit budget form" do
    render

    assert_select "form[action=?][method=?]", budget_path(@budget), "post" do

      assert_select "input[name=?]", "budget[budget_name]"

      assert_select "input[name=?]", "budget[budget_amount]"
    end
  end
end
