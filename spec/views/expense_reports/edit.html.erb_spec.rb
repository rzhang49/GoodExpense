require 'spec_helper'

describe "expense_reports/edit" do
  before(:each) do
    @expense_report = assign(:expense_report, stub_model(ExpenseReport,
      :Employee_Name => "MyString",
      :Division => "MyString",
      :Department => "MyString",
      :From => "MyString",
      :To => "MyString",
      :Business_Purpose => "MyString",
      :Date => "MyString",
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
      :Date => "MyString",
      :NameFirmPosition => "MyString",
      :Purpose => "MyString"
    ))
  end

  it "renders the edit expense_report form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => expense_reports_path(@expense_report), :method => "post" do
      assert_select "input#expense_report_Employee_Name", :name => "expense_report[Employee_Name]"
      assert_select "input#expense_report_Division", :name => "expense_report[Division]"
      assert_select "input#expense_report_Department", :name => "expense_report[Department]"
      assert_select "input#expense_report_From", :name => "expense_report[From]"
      assert_select "input#expense_report_To", :name => "expense_report[To]"
      assert_select "input#expense_report_Business_Purpose", :name => "expense_report[Business_Purpose]"
      assert_select "input#expense_report_Date", :name => "expense_report[Date]"
      assert_select "input#expense_report_Amount", :name => "expense_report[Amount]"
      assert_select "input#expense_report_Airfare", :name => "expense_report[Airfare]"
      assert_select "input#expense_report_TaxiTransportation", :name => "expense_report[TaxiTransportation]"
      assert_select "input#expense_report_TollsParking", :name => "expense_report[TollsParking]"
      assert_select "input#expense_report_Car_Rental", :name => "expense_report[Car_Rental]"
      assert_select "input#expense_report_Gas", :name => "expense_report[Gas]"
      assert_select "input#expense_report_Hotel", :name => "expense_report[Hotel]"
      assert_select "input#expense_report_Other", :name => "expense_report[Other]"
      assert_select "input#expense_report_Breakfast", :name => "expense_report[Breakfast]"
      assert_select "input#expense_report_Lunch", :name => "expense_report[Lunch]"
      assert_select "input#expense_report_Dinner", :name => "expense_report[Dinner]"
      assert_select "input#expense_report_Business_Meals", :name => "expense_report[Business_Meals]"
      assert_select "input#expense_report_Entertainment", :name => "expense_report[Entertainment]"
      assert_select "input#expense_report_Cell_Phone", :name => "expense_report[Cell_Phone]"
      assert_select "input#expense_report_Office_Phone", :name => "expense_report[Office_Phone]"
      assert_select "input#expense_report_Postage", :name => "expense_report[Postage]"
      assert_select "input#expense_report_Office_Supplies", :name => "expense_report[Office_Supplies]"
      assert_select "input#expense_report_Competitor_Products", :name => "expense_report[Competitor_Products]"
      assert_select "input#expense_report_Date", :name => "expense_report[Date]"
      assert_select "input#expense_report_NameFirmPosition", :name => "expense_report[NameFirmPosition]"
      assert_select "input#expense_report_Purpose", :name => "expense_report[Purpose]"
    end
  end
end
