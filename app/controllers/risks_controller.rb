class RisksController < ApplicationController
  # GET /risks
  # GET /risks.xml
  def index
    @risks = Risk.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @risks }
    end
  end

  # GET /risks/1
  # GET /risks/1.xml
  def show
    @risk = Risk.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @risk }
    end
  end

  # GET /risks/new
  # GET /risks/new.xml
  def new
    @risk = Risk.new
    @events = Event.all
    @goals = Goal.all

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @risk }
    end
  end

  # GET /risks/1/edit
  def edit
    @risk = Risk.find(params[:id])
  end

  # POST /risks
  # POST /risks.xml
  def create
#    @event = Event.find(params[:event_id])
#    @goal = Goal.find(params[:goal_id])
    @risk = Risk.new(params[:risk])
    @event = Event.find(@risk.event)
    @goal = Goal.find(@risk.goal)
    @risk.description = "В результате того, что " + @event.description + ", " + @goal.description + " не " + @goal.action + " " + @goal.target + " (+/- " + @goal.deviation + ")"

    respond_to do |format|
      if @risk.save
        flash[:notice] = 'Risk was successfully created.'
        format.html { redirect_to(@risk) }
        format.xml  { render :xml => @risk, :status => :created, :location => @risk }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @risk.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /risks/1
  # PUT /risks/1.xml
  def update
    @risk = Risk.find(params[:id])

    respond_to do |format|
      if @risk.update_attributes(params[:risk])
        flash[:notice] = 'Risk was successfully updated.'
        format.html { redirect_to(@risk) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @risk.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /risks/1
  # DELETE /risks/1.xml
  def destroy
    @risk = Risk.find(params[:id])
    @risk.destroy

    respond_to do |format|
      format.html { redirect_to(risks_url) }
      format.xml  { head :ok }
    end
  end
end
