require 'spec_helper'

describe "direct_deposits/edit" do
  before(:each) do
    @direct_deposit = assign(:direct_deposit, stub_model(DirectDeposit,
      :Name => "MyString",
      :Bank_Account_Number => 1,
      :Routing_Number => 1
    ))
  end

  it "renders the edit direct_deposit form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => direct_deposits_path(@direct_deposit), :method => "post" do
      assert_select "input#direct_deposit_Name", :name => "direct_deposit[Name]"
      assert_select "input#direct_deposit_Bank_Account_Number", :name => "direct_deposit[Bank_Account_Number]"
      assert_select "input#direct_deposit_Routing_Number", :name => "direct_deposit[Routing_Number]"
    end
  end
end
