require 'spec_helper'

describe "direct_deposits/show" do
  before(:each) do
    @direct_deposit = assign(:direct_deposit, stub_model(DirectDeposit,
      :Name => "Name",
      :Bank_Account_Number => 1,
      :Routing_Number => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
