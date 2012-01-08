class KompsController < ApplicationController
  # GET /komps
  # GET /komps.json
  def index
    @komps = Komp.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @komps }
    end
  end

  # GET /komps/1
  # GET /komps/1.json
  def show
    @komp = Komp.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @komp }
    end
  end

  # GET /komps/new
  # GET /komps/new.json
  def new
    @komp = Komp.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @komp }
    end
  end

  # GET /komps/1/edit
  def edit
    @komp = Komp.find(params[:id])
  end

  # POST /komps
  # POST /komps.json
  def create
    @komp = Komp.new(params[:komp])

    respond_to do |format|
      if @komp.save
        format.html { redirect_to @komp, notice: 'Komp was successfully created.' }
        format.json { render json: @komp, status: :created, location: @komp }
      else
        format.html { render action: "new" }
        format.json { render json: @komp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /komps/1
  # PUT /komps/1.json
  def update
    @komp = Komp.find(params[:id])

    respond_to do |format|
      if @komp.update_attributes(params[:komp])
        format.html { redirect_to @komp, notice: 'Komp was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @komp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /komps/1
  # DELETE /komps/1.json
  def destroy
    @komp = Komp.find(params[:id])
    @komp.destroy

    respond_to do |format|
      format.html { redirect_to komps_url }
      format.json { head :ok }
    end
  end
end
