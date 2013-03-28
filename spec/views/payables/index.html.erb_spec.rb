require 'spec_helper'

describe "payables/index" do
  before(:each) do
    assign(:payables, [
      stub_model(Payable,
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
      ),
      stub_model(Payable,
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
      )
    ])
  end

  it "renders a list of payables" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => "Text".to_s, :count => 2
    assert_select "tr>td", :text => "Doc Date".to_s, :count => 2
    assert_select "tr>td", :text => "Net Due".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Currency".to_s, :count => 2
  end
end
