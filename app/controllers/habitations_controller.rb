class HabitationsController < ApplicationController
  before_action :set_habitation, only: %i[ show edit update destroy ]

  # GET /habitations or /habitations.json
  def index
    @habitations = Habitation.all
  end

  # GET /habitations/1 or /habitations/1.json
  def show
  end

  # GET /habitations/new
  def new
    @habitation = Habitation.new
  end

  # GET /habitations/1/edit
  def edit
  end

  # POST /habitations or /habitations.json
  def create
    @habitation = Habitation.new(habitation_params)

    respond_to do |format|
      if @habitation.save
        format.html { redirect_to habitation_url(@habitation), notice: "Habitation was successfully created." }
        format.json { render :show, status: :created, location: @habitation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @habitation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /habitations/1 or /habitations/1.json
  def update
    respond_to do |format|
      if @habitation.update(habitation_params)
        format.html { redirect_to habitation_url(@habitation), notice: "Habitation was successfully updated." }
        format.json { render :show, status: :ok, location: @habitation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @habitation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /habitations/1 or /habitations/1.json
  def destroy
    @habitation.destroy

    respond_to do |format|
      format.html { redirect_to habitations_url, notice: "Habitation was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_habitation
      @habitation = Habitation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def habitation_params
      params.require(:habitation).permit(:type, :airc, :private_bat)
    end
end
