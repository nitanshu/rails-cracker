class ComapniesController < ApplicationController
  before_action :set_comapny, only: %i[ show edit update destroy ]

  # GET /comapnies or /comapnies.json
  def index
    @comapnies = Comapny.all
  end

  # GET /comapnies/1 or /comapnies/1.json
  def show
  end

  # GET /comapnies/new
  def new
    @comapny = Comapny.new
  end

  # GET /comapnies/1/edit
  def edit
  end

  # POST /comapnies or /comapnies.json
  def create
    @comapny = Comapny.new(comapny_params)

    respond_to do |format|
      if @comapny.save
        format.html { redirect_to comapny_url(@comapny), notice: "Comapny was successfully created." }
        format.json { render :show, status: :created, location: @comapny }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @comapny.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comapnies/1 or /comapnies/1.json
  def update
    respond_to do |format|
      if @comapny.update(comapny_params)
        format.html { redirect_to comapny_url(@comapny), notice: "Comapny was successfully updated." }
        format.json { render :show, status: :ok, location: @comapny }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @comapny.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comapnies/1 or /comapnies/1.json
  def destroy
    @comapny.destroy

    respond_to do |format|
      format.html { redirect_to comapnies_url, notice: "Comapny was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comapny
      @comapny = Comapny.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def comapny_params
      params.require(:comapny).permit(:name)
    end
end
