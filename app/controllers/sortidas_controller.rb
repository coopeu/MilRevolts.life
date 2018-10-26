class SortidasController < ApplicationController
  before_action :set_sortida, only: [:show, :edit, :update, :destroy]



    
  # GET /sortidas
  # GET /sortidas.json
  def index
    @sortidas = Sortida.all
  end

  # GET /sortidas/1
  # GET /sortidas/1.json
  def show
  end

  # GET /sortidas/new
  def new
    @sortida = Sortida.new
  end

  # GET /sortidas/1/edit
  def edit
  end

  # POST /sortidas
  # POST /sortidas.json
  def create
    @sortida = Sortida.new(sortida_params)

    respond_to do |format|
      if @sortida.save
        format.html { redirect_to @sortida, notice: 'Sortida was successfully created.' }
        format.json { render :show, status: :created, location: @sortida }
      else
        format.html { render :new }
        format.json { render json: @sortida.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sortidas/1
  # PATCH/PUT /sortidas/1.json
  def update
    respond_to do |format|
      if @sortida.update(sortida_params)
        format.html { redirect_to @sortida, notice: 'Sortida was successfully updated.' }
        format.json { render :show, status: :ok, location: @sortida }
      else
        format.html { render :edit }
        format.json { render json: @sortida.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sortidas/1
  # DELETE /sortidas/1.json
  def destroy
    @sortida.destroy
    respond_to do |format|
      format.html { redirect_to sortidas_url, notice: 'Sortida was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sortida
      @sortida = Sortida.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sortida_params
      params.require(:sortida).permit(:title)
    end
end
