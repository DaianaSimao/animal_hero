class ClinicasController < ApplicationController
  before_action :set_clinica, only: [:show, :edit, :update, :destroy]

  # GET /clinicas
  # GET /clinicas.json
  def index
    if params[:id].nil?
      @clinicas = Clinica.all
    else
      @clinicas = Clinica.where(id: params[:id])
    end
  end

  # GET /clinicas/1
  # GET /clinicas/1.json
  def show
  end

  # GET /clinicas/new
  def new
    @clinica = Clinica.new
  end

  # GET /clinicas/1/edit
  def edit
  end

  # POST /clinicas
  # POST /clinicas.json
  def create
    @clinica = Clinica.new(clinica_params)

    respond_to do |format|
      if @clinica.save
        format.html { redirect_to @clinica, notice: 'Clinica was successfully created.' }
        format.json { render :show, status: :created, location: @clinica }
      else
        format.html { render :new }
        format.json { render json: @clinica.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clinicas/1
  # PATCH/PUT /clinicas/1.json
  def update
    respond_to do |format|
      if @clinica.update(clinica_params)
        format.html { redirect_to @clinica, notice: 'Clinica was successfully updated.' }
        format.json { render :show, status: :ok, location: @clinica }
      else
        format.html { render :edit }
        format.json { render json: @clinica.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clinicas/1
  # DELETE /clinicas/1.json
  def destroy
    @clinica.destroy
    respond_to do |format|
      format.html { redirect_to clinicas_url, notice: 'Clinica was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clinica
      @clinica = Clinica.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def clinica_params
      params.require(:clinica).permit(:nome, :endereco, :numero, :estado, :logo)
    end
end
