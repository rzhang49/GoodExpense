require 'spec_helper'

describe "payables/show" do
  before(:each) do
    @payable = assign(:payable, stub_model(Payable,
      :Document_Number => 1,
      :Type => "Type",
      :DD => 2,
      :PBK => 3,
      :ClrngDoc => 4,
      :Text => "Text",
      :DocDate => "Doc Date",
      :NetDue => "Net Due",
      :Amount_Due => 1.5,
      :Currency => "Currency"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Type/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
    rendered.should match(/Text/)
    rendered.should match(/Doc Date/)
    rendered.should match(/Net Due/)
    rendered.should match(/1.5/)
    rendered.should match(/Currency/)
  end
end
