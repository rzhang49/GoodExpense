require 'spec_helper'

describe "payrolls/index" do
  before(:each) do
    assign(:payrolls, [
      stub_model(Payroll,
        :Employee_Name => "Employee Name",
        :Date => "Date",
        :Job_Title => "Job Title",
        :Date_Begin => "Date Begin",
        :Date_End => "Date End",
        :Hours => 1,
        :Comments => "Comments"
      ),
      stub_model(Payroll,
        :Employee_Name => "Employee Name",
        :Date => "Date",
        :Job_Title => "Job Title",
        :Date_Begin => "Date Begin",
        :Date_End => "Date End",
        :Hours => 1,
        :Comments => "Comments"
      )
    ])
  end

  it "renders a list of payrolls" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Employee Name".to_s, :count => 2
    assert_select "tr>td", :text => "Date".to_s, :count => 2
    assert_select "tr>td", :text => "Job Title".to_s, :count => 2
    assert_select "tr>td", :text => "Date Begin".to_s, :count => 2
    assert_select "tr>td", :text => "Date End".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Comments".to_s, :count => 2
  end
end
