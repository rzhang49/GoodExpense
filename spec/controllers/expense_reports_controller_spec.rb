require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe ExpenseReportsController do

  # This should return the minimal set of attributes required to create a valid
  # ExpenseReport. As you add validations to ExpenseReport, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ExpenseReportsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all expense_reports as @expense_reports" do
      expense_report = ExpenseReport.create! valid_attributes
      get :index, {}, valid_session
      assigns(:expense_reports).should eq([expense_report])
    end
  end

  describe "GET show" do
    it "assigns the requested expense_report as @expense_report" do
      expense_report = ExpenseReport.create! valid_attributes
      get :show, {:id => expense_report.to_param}, valid_session
      assigns(:expense_report).should eq(expense_report)
    end
  end

  describe "GET new" do
    it "assigns a new expense_report as @expense_report" do
      get :new, {}, valid_session
      assigns(:expense_report).should be_a_new(ExpenseReport)
    end
  end

  describe "GET edit" do
    it "assigns the requested expense_report as @expense_report" do
      expense_report = ExpenseReport.create! valid_attributes
      get :edit, {:id => expense_report.to_param}, valid_session
      assigns(:expense_report).should eq(expense_report)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new ExpenseReport" do
        expect {
          post :create, {:expense_report => valid_attributes}, valid_session
        }.to change(ExpenseReport, :count).by(1)
      end

      it "assigns a newly created expense_report as @expense_report" do
        post :create, {:expense_report => valid_attributes}, valid_session
        assigns(:expense_report).should be_a(ExpenseReport)
        assigns(:expense_report).should be_persisted
      end

      it "redirects to the created expense_report" do
        post :create, {:expense_report => valid_attributes}, valid_session
        response.should redirect_to(ExpenseReport.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved expense_report as @expense_report" do
        # Trigger the behavior that occurs when invalid params are submitted
        ExpenseReport.any_instance.stub(:save).and_return(false)
        post :create, {:expense_report => {}}, valid_session
        assigns(:expense_report).should be_a_new(ExpenseReport)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        ExpenseReport.any_instance.stub(:save).and_return(false)
        post :create, {:expense_report => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested expense_report" do
        expense_report = ExpenseReport.create! valid_attributes
        # Assuming there are no other expense_reports in the database, this
        # specifies that the ExpenseReport created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        ExpenseReport.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => expense_report.to_param, :expense_report => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested expense_report as @expense_report" do
        expense_report = ExpenseReport.create! valid_attributes
        put :update, {:id => expense_report.to_param, :expense_report => valid_attributes}, valid_session
        assigns(:expense_report).should eq(expense_report)
      end

      it "redirects to the expense_report" do
        expense_report = ExpenseReport.create! valid_attributes
        put :update, {:id => expense_report.to_param, :expense_report => valid_attributes}, valid_session
        response.should redirect_to(expense_report)
      end
    end

    describe "with invalid params" do
      it "assigns the expense_report as @expense_report" do
        expense_report = ExpenseReport.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        ExpenseReport.any_instance.stub(:save).and_return(false)
        put :update, {:id => expense_report.to_param, :expense_report => {}}, valid_session
        assigns(:expense_report).should eq(expense_report)
      end

      it "re-renders the 'edit' template" do
        expense_report = ExpenseReport.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        ExpenseReport.any_instance.stub(:save).and_return(false)
        put :update, {:id => expense_report.to_param, :expense_report => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested expense_report" do
      expense_report = ExpenseReport.create! valid_attributes
      expect {
        delete :destroy, {:id => expense_report.to_param}, valid_session
      }.to change(ExpenseReport, :count).by(-1)
    end

    it "redirects to the expense_reports list" do
      expense_report = ExpenseReport.create! valid_attributes
      delete :destroy, {:id => expense_report.to_param}, valid_session
      response.should redirect_to(expense_reports_url)
    end
  end

end
