require 'spec_helper'

describe "direct_deposits/index" do
  before(:each) do
    assign(:direct_deposits, [
      stub_model(DirectDeposit,
        :Name => "Name",
        :Bank_Account_Number => 1,
        :Routing_Number => 2
      ),
      stub_model(DirectDeposit,
        :Name => "Name",
        :Bank_Account_Number => 1,
        :Routing_Number => 2
      )
    ])
  end

  it "renders a list of direct_deposits" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
