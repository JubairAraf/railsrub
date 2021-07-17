class BanglasController < ApplicationController
  before_action :set_bangla, only: %i[ show edit update destroy ]

  # GET /banglas or /banglas.json
  def index
    @banglas = Bangla.all
  end

  # GET /banglas/1 or /banglas/1.json
  def show
  end

  # GET /banglas/new
  def new
    @bangla = Bangla.new
  end

  # GET /banglas/1/edit
  def edit
  end

  # POST /banglas or /banglas.json
  def create
    @bangla = Bangla.new(bangla_params)

    respond_to do |format|
      if @bangla.save
        format.html { redirect_to @bangla, notice: "Bangla was successfully created." }
        format.json { render :show, status: :created, location: @bangla }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bangla.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /banglas/1 or /banglas/1.json
  def update
    respond_to do |format|
      if @bangla.update(bangla_params)
        format.html { redirect_to @bangla, notice: "Bangla was successfully updated." }
        format.json { render :show, status: :ok, location: @bangla }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bangla.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /banglas/1 or /banglas/1.json
  def destroy
    @bangla.destroy
    respond_to do |format|
      format.html { redirect_to banglas_url, notice: "Bangla was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bangla
      @bangla = Bangla.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bangla_params
      params.require(:bangla).permit(:khawa, :mangso)
    end
end
