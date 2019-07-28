class BarracksController < ApplicationController
  before_action :set_barrack, only: [:show, :edit, :update, :destroy]

  # GET /barracks
  # GET /barracks.json
  def index
    @barracks = Barrack.all
  end

  # GET /barracks/1
  # GET /barracks/1.json
  def show
  end

  # GET /barracks/new
  def new
    @barrack = Barrack.new
  end

  # GET /barracks/1/edit
  def edit
  end

  # POST /barracks
  # POST /barracks.json
  def create
    @barrack = Barrack.new(barrack_params)

    respond_to do |format|
      if @barrack.save
        format.html { redirect_to @barrack, notice: 'Barrack was successfully created.' }
        format.json { render :show, status: :created, location: @barrack }
      else
        format.html { render :new }
        format.json { render json: @barrack.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /barracks/1
  # PATCH/PUT /barracks/1.json
  def update
    respond_to do |format|
      if @barrack.update(barrack_params)
        format.html { redirect_to @barrack, notice: 'Barrack was successfully updated.' }
        format.json { render :show, status: :ok, location: @barrack }
      else
        format.html { render :edit }
        format.json { render json: @barrack.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /barracks/1
  # DELETE /barracks/1.json
  def destroy
    @barrack.destroy
    respond_to do |format|
      format.html { redirect_to barracks_url, notice: 'Barrack was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_barrack
      @barrack = Barrack.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def barrack_params
      params.require(:barrack).permit(:code_id, :name_barracks, :location)
    end
end
