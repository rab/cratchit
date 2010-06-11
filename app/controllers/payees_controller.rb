class PayeesController < ApplicationController
  # GET /payees
  # GET /payees.xml
  def index
    @payees = Payee.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @payees }
    end
  end

  # GET /payees/1
  # GET /payees/1.xml
  def show
    @payee = Payee.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @payee }
    end
  end

  # GET /payees/new
  # GET /payees/new.xml
  def new
    @payee = Payee.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @payee }
    end
  end

  # GET /payees/1/edit
  def edit
    @payee = Payee.find(params[:id])
  end

  # POST /payees
  # POST /payees.xml
  def create
    @payee = Payee.new(params[:payee])

    respond_to do |format|
      if @payee.save
        format.html { redirect_to(@payee, :notice => 'Payee was successfully created.') }
        format.xml  { render :xml => @payee, :status => :created, :location => @payee }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @payee.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /payees/1
  # PUT /payees/1.xml
  def update
    @payee = Payee.find(params[:id])

    respond_to do |format|
      if @payee.update_attributes(params[:payee])
        format.html { redirect_to(@payee, :notice => 'Payee was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @payee.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /payees/1
  # DELETE /payees/1.xml
  def destroy
    @payee = Payee.find(params[:id])
    @payee.destroy

    respond_to do |format|
      format.html { redirect_to(payees_url) }
      format.xml  { head :ok }
    end
  end
end
