class AggrupationsController < ApplicationController
  before_action :set_aggrupation, only: [:show, :edit, :update, :destroy]

  # GET /aggrupations
  # GET /aggrupations.json
  def index
    @aggrupations = Aggrupation.all
  end

  # GET /aggrupations/1
  # GET /aggrupations/1.json
  def show
  end

  # GET /aggrupations/new
  def new
    @aggrupation = Aggrupation.new
  end

  # GET /aggrupations/1/edit
  def edit
  end

  # POST /aggrupations
  # POST /aggrupations.json
  def create
    @aggrupation = Aggrupation.new(aggrupation_params)

    respond_to do |format|
      if @aggrupation.save
        format.html { redirect_to @aggrupation, notice: 'Aggrupation was successfully created.' }
        format.json { render :show, status: :created, location: @aggrupation }
      else
        format.html { render :new }
        format.json { render json: @aggrupation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aggrupations/1
  # PATCH/PUT /aggrupations/1.json
  def update
    respond_to do |format|
      if @aggrupation.update(aggrupation_params)
        format.html { redirect_to @aggrupation, notice: 'Aggrupation was successfully updated.' }
        format.json { render :show, status: :ok, location: @aggrupation }
      else
        format.html { render :edit }
        format.json { render json: @aggrupation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aggrupations/1
  # DELETE /aggrupations/1.json
  def destroy
    @aggrupation.destroy
    respond_to do |format|
      format.html { redirect_to aggrupations_url, notice: 'Aggrupation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aggrupation
      @aggrupation = Aggrupation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def aggrupation_params
      params.require(:aggrupation).permit(:agrupacion_id, :tipo_id, :nombre_agrupacion, :display_agrupacion)
    end
end
