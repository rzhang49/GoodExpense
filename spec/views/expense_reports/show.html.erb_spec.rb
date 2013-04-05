require 'spec_helper'

describe "expense_reports/show" do
  before(:each) do
    @expense_report = assign(:expense_report, stub_model(ExpenseReport,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Employee Name/)
    rendered.should match(/Division/)
    rendered.should match(/Department/)
    rendered.should match(/From/)
    rendered.should match(/To/)
    rendered.should match(/Business Purpose/)
    rendered.should match(/Date/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/Date/)
    rendered.should match(/Name Firm Position/)
    rendered.should match(/Purpose/)
  end
end
