require 'spec_helper'

describe "payables/new" do
  before(:each) do
    assign(:payable, stub_model(Payable,
      :Document_Number => 1,
      :Type => "MyString",
      :DD => 1,
      :PBK => 1,
      :ClrngDoc => 1,
      :Text => "MyString",
      :DocDate => "MyString",
      :NetDue => "MyString",
      :Amount_Due => 1.5,
      :Currency => "MyString"
    ).as_new_record)
  end

  it "renders new payable form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => payables_path, :method => "post" do
      assert_select "input#payable_Document_Number", :name => "payable[Document_Number]"
      assert_select "input#payable_Type", :name => "payable[Type]"
      assert_select "input#payable_DD", :name => "payable[DD]"
      assert_select "input#payable_PBK", :name => "payable[PBK]"
      assert_select "input#payable_ClrngDoc", :name => "payable[ClrngDoc]"
      assert_select "input#payable_Text", :name => "payable[Text]"
      assert_select "input#payable_DocDate", :name => "payable[DocDate]"
      assert_select "input#payable_NetDue", :name => "payable[NetDue]"
      assert_select "input#payable_Amount_Due", :name => "payable[Amount_Due]"
      assert_select "input#payable_Currency", :name => "payable[Currency]"
    end
  end
end
