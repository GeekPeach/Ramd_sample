class RandsController < ApplicationController
  # GET /rands
  # GET /rands.json
  def index
    @rands = Rand.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rands }
    end
  end

  # GET /rands/1
  # GET /rands/1.json
  def show
    @rand = Rand.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @rand }
    end
  end

  # GET /rands/$rand
  # GET /rands/$rand.json
  def rand_show
    @rand_all = Rand.all
    rand_num=rand(@rand_all.size)+1
    @rand = Rand.find(rand_num)

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @rand }
    end
  end

  # GET /rands/new
  # GET /rands/new.json
  def new
    @rand = Rand.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @rand }
    end
  end

  # GET /rands/1/edit
  def edit
    @rand = Rand.find(params[:id])
  end

  # POST /rands
  # POST /rands.json
  def create
    @rand = Rand.new(params[:rand])

    respond_to do |format|
      if @rand.save
        format.html { redirect_to @rand, notice: 'Rand was successfully created.' }
        format.json { render json: @rand, status: :created, location: @rand }
      else
        format.html { render action: "new" }
        format.json { render json: @rand.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /rands/1
  # PUT /rands/1.json
  def update
    @rand = Rand.find(params[:id])

    respond_to do |format|
      if @rand.update_attributes(params[:rand])
        format.html { redirect_to @rand, notice: 'Rand was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @rand.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rands/1
  # DELETE /rands/1.json
  def destroy
    @rand = Rand.find(params[:id])
    @rand.destroy

    respond_to do |format|
      format.html { redirect_to rands_url }
      format.json { head :no_content }
    end
  end
end
