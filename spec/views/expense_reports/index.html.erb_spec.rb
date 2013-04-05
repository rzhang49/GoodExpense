require 'spec_helper'

describe "expense_reports/index" do
  before(:each) do
    assign(:expense_reports, [
      stub_model(ExpenseReport,
        :Employee_Name => "Employee Name",
        :Division => "Division",
        :Department => "Department",
        :From => "From",
        :To => "To",
        :Business_Purpose => "Business Purpose",
        :Date => "Date",
        :Amount => 1.5,
        :Airfare => 1.5,
        :TaxiTransportation => 1.5,
        :TollsParking => 1.5,
        :Car_Rental => 1.5,
        :Gas => 1.5,
        :Hotel => 1.5,
        :Other => 1.5,
        :Breakfast => 1.5,
        :Lunch => 1.5,
        :Dinner => 1.5,
        :Business_Meals => 1.5,
        :Entertainment => 1.5,
        :Cell_Phone => 1.5,
        :Office_Phone => 1.5,
        :Postage => 1.5,
        :Office_Supplies => 1.5,
        :Competitor_Products => 1.5,
        :Date => "Date",
        :NameFirmPosition => "Name Firm Position",
        :Purpose => "Purpose"
      ),
      stub_model(ExpenseReport,
        :Employee_Name => "Employee Name",
        :Division => "Division",
        :Department => "Department",
        :From => "From",
        :To => "To",
        :Business_Purpose => "Business Purpose",
        :Date => "Date",
        :Amount => 1.5,
        :Airfare => 1.5,
        :TaxiTransportation => 1.5,
        :TollsParking => 1.5,
        :Car_Rental => 1.5,
        :Gas => 1.5,
        :Hotel => 1.5,
        :Other => 1.5,
        :Breakfast => 1.5,
        :Lunch => 1.5,
        :Dinner => 1.5,
        :Business_Meals => 1.5,
        :Entertainment => 1.5,
        :Cell_Phone => 1.5,
        :Office_Phone => 1.5,
        :Postage => 1.5,
        :Office_Supplies => 1.5,
        :Competitor_Products => 1.5,
        :Date => "Date",
        :NameFirmPosition => "Name Firm Position",
        :Purpose => "Purpose"
      )
    ])
  end

  it "renders a list of expense_reports" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Employee Name".to_s, :count => 2
    assert_select "tr>td", :text => "Division".to_s, :count => 2
    assert_select "tr>td", :text => "Department".to_s, :count => 2
    assert_select "tr>td", :text => "From".to_s, :count => 2
    assert_select "tr>td", :text => "To".to_s, :count => 2
    assert_select "tr>td", :text => "Business Purpose".to_s, :count => 2
    assert_select "tr>td", :text => "Date".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Date".to_s, :count => 2
    assert_select "tr>td", :text => "Name Firm Position".to_s, :count => 2
    assert_select "tr>td", :text => "Purpose".to_s, :count => 2
  end
end
