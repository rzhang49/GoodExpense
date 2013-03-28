require 'spec_helper'

describe "payrolls/edit" do
  before(:each) do
    @payroll = assign(:payroll, stub_model(Payroll,
      :Employee_Name => "MyString",
      :Date => "MyString",
      :Job_Title => "MyString",
      :Date_Begin => "MyString",
      :Date_End => "MyString",
      :Hours => 1,
      :Comments => "MyString"
    ))
  end

  it "renders the edit payroll form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => payrolls_path(@payroll), :method => "post" do
      assert_select "input#payroll_Employee_Name", :name => "payroll[Employee_Name]"
      assert_select "input#payroll_Date", :name => "payroll[Date]"
      assert_select "input#payroll_Job_Title", :name => "payroll[Job_Title]"
      assert_select "input#payroll_Date_Begin", :name => "payroll[Date_Begin]"
      assert_select "input#payroll_Date_End", :name => "payroll[Date_End]"
      assert_select "input#payroll_Hours", :name => "payroll[Hours]"
      assert_select "input#payroll_Comments", :name => "payroll[Comments]"
    end
  end
end
