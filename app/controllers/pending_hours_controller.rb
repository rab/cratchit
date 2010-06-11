class PendingHoursController < ApplicationController
  # GET /pending_hours
  # GET /pending_hours.xml
  def index
    @pending_hours = PendingHour.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @pending_hours }
    end
  end

  # GET /pending_hours/1
  # GET /pending_hours/1.xml
  def show
    @pending_hour = PendingHour.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @pending_hour }
    end
  end

  # GET /pending_hours/new
  # GET /pending_hours/new.xml
  def new
    @pending_hour = PendingHour.new
    @role_choices = Role.choices_for_select_doer

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @pending_hour }
    end
  end

  # GET /pending_hours/1/edit
  def edit
    @pending_hour = PendingHour.find(params[:id])
    @role_choices = Role.choices_for_select_doer
  end

  # POST /pending_hours
  # POST /pending_hours.xml
  def create
    @pending_hour = PendingHour.new(params[:pending_hour])

    respond_to do |format|
      if @pending_hour.save
        format.html { redirect_to(@pending_hour, :notice => 'Pending hour was successfully created.') }
        format.xml  { render :xml => @pending_hour, :status => :created, :location => @pending_hour }
      else
        format.html { @role_choices = Role.choices_for_select_doer
                      render :action => "new" }
        format.xml  { render :xml => @pending_hour.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /pending_hours/1
  # PUT /pending_hours/1.xml
  def update
    @pending_hour = PendingHour.find(params[:id])

    respond_to do |format|
      if @pending_hour.update_attributes(params[:pending_hour])
        format.html { redirect_to(@pending_hour, :notice => 'Pending hour was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { @role_choices = Role.choices_for_select_doer
                      render :action => "edit" }
        format.xml  { render :xml => @pending_hour.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /pending_hours/1
  # DELETE /pending_hours/1.xml
  def destroy
    @pending_hour = PendingHour.find(params[:id])
    @pending_hour.destroy

    respond_to do |format|
      format.html { redirect_to(pending_hours_url) }
      format.xml  { head :ok }
    end
  end
end
