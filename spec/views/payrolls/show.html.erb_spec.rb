require 'spec_helper'

describe "payrolls/show" do
  before(:each) do
    @payroll = assign(:payroll, stub_model(Payroll,
      :Employee_Name => "Employee Name",
      :Date => "Date",
      :Job_Title => "Job Title",
      :Date_Begin => "Date Begin",
      :Date_End => "Date End",
      :Hours => 1,
      :Comments => "Comments"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Employee Name/)
    rendered.should match(/Date/)
    rendered.should match(/Job Title/)
    rendered.should match(/Date Begin/)
    rendered.should match(/Date End/)
    rendered.should match(/1/)
    rendered.should match(/Comments/)
  end
end
