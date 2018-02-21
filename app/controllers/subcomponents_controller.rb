class SubcomponentsController < ApplicationController
  before_action :set_subcomponent, only: [:show, :edit, :update, :destroy]

  # GET /subcomponents
  # GET /subcomponents.json
  def index
    @subcomponents = Subcomponent.all
  end

  # GET /subcomponents/1
  # GET /subcomponents/1.json
  def show
  end

  # GET /subcomponents/new
  def new
    @subcomponent = Subcomponent.new
  end

  # GET /subcomponents/1/edit
  def edit
  end

  # POST /subcomponents
  # POST /subcomponents.json
  def create
    @subcomponent = Subcomponent.new(subcomponent_params)

    respond_to do |format|
      if @subcomponent.save
        format.html { redirect_to @subcomponent, notice: 'Subcomponent was successfully created.' }
        format.json { render :show, status: :created, location: @subcomponent }
      else
        format.html { render :new }
        format.json { render json: @subcomponent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subcomponents/1
  # PATCH/PUT /subcomponents/1.json
  def update
    respond_to do |format|
      if @subcomponent.update(subcomponent_params)
        format.html { redirect_to @subcomponent, notice: 'Subcomponent was successfully updated.' }
        format.json { render :show, status: :ok, location: @subcomponent }
      else
        format.html { render :edit }
        format.json { render json: @subcomponent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subcomponents/1
  # DELETE /subcomponents/1.json
  def destroy
    @subcomponent.destroy
    respond_to do |format|
      format.html { redirect_to subcomponents_url, notice: 'Subcomponent was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subcomponent
      @subcomponent = Subcomponent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subcomponent_params
      params.require(:subcomponent).permit(:subcomponente_id, :componente_id, :nombre_subcomponente, :display_subcomponente)
    end
end
