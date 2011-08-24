class CampersController < ApplicationController
  # GET /campers
  # GET /campers.json
  def index
    @campers = Camper.all
    @courses = Course.all.map { |c| c.name }

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @campers }
    end
  end

  # GET /campers/1
  # GET /campers/1.json
  def show
    @camper = Camper.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @camper }
    end
  end

  # GET /campers/new
  # GET /campers/new.json
  def new
    @camper = Camper.new
    @courses = Course.all

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @camper }
    end
  end

  # GET /campers/1/edit
  def edit
    @camper = Camper.find(params[:id])
    @courses = Course.all
  end

  # POST /campers
  # POST /campers.json
  def create
    @camper = Camper.new(params[:camper])

    respond_to do |format|
      if @camper.save
        format.html { redirect_to @camper, notice: 'Camper was successfully created.' }
        format.json { render json: @camper, status: :created, location: @camper }
      else
        format.html { render action: "new" }
        format.json { render json: @camper.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /campers/1
  # PUT /campers/1.json
  def update
    @camper = Camper.find(params[:id])

    respond_to do |format|
      if @camper.update_attributes(params[:camper])
        format.html { redirect_to @camper, notice: 'Camper was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @camper.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /campers/1
  # DELETE /campers/1.json
  def destroy
    @camper = Camper.find(params[:id])
    @camper.destroy

    respond_to do |format|
      format.html { redirect_to campers_url }
      format.json { head :ok }
    end
  end
end
