class DirectDepositsController < ApplicationController
  # GET /direct_deposits
  # GET /direct_deposits.json
  def index
    @direct_deposits = DirectDeposit.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @direct_deposits }
    end
  end

  # GET /direct_deposits/1
  # GET /direct_deposits/1.json
  def show
    @direct_deposit = DirectDeposit.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @direct_deposit }
    end
  end

  # GET /direct_deposits/new
  # GET /direct_deposits/new.json
  def new
    @direct_deposit = DirectDeposit.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @direct_deposit }
    end
  end

  # GET /direct_deposits/1/edit
  def edit
    @direct_deposit = DirectDeposit.find(params[:id])
  end

  # POST /direct_deposits
  # POST /direct_deposits.json
  def create
    @direct_deposit = DirectDeposit.new(params[:direct_deposit])

    respond_to do |format|
      if @direct_deposit.save
        format.html { redirect_to @direct_deposit, :notice => 'Direct deposit was successfully created.' }
        format.json { render :json => @direct_deposit, :status => :created, :location => @direct_deposit }
      else
        format.html { render :action => "new" }
        format.json { render :json => @direct_deposit.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /direct_deposits/1
  # PUT /direct_deposits/1.json
  def update
    @direct_deposit = DirectDeposit.find(params[:id])

    respond_to do |format|
      if @direct_deposit.update_attributes(params[:direct_deposit])
        format.html { redirect_to @direct_deposit, :notice => 'Direct deposit was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @direct_deposit.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /direct_deposits/1
  # DELETE /direct_deposits/1.json
  def destroy
    @direct_deposit = DirectDeposit.find(params[:id])
    @direct_deposit.destroy

    respond_to do |format|
      format.html { redirect_to direct_deposits_url }
      format.json { head :no_content }
    end
  end
end
