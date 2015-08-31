class CliantsController < ApplicationController
  before_action :set_cliant, only: [:show, :edit, :update, :destroy]

  # GET /cliants
  # GET /cliants.json
  def index
    @cliants = Cliant.all
  end

  # GET /cliants/1
  # GET /cliants/1.json
  def show
  end

  # GET /cliants/new
  def new
    @cliant = Cliant.new
  end

  # GET /cliants/1/edit
  def edit
  end

  # POST /cliants
  # POST /cliants.json
  def create
    @cliant = Cliant.new(cliant_params)

    respond_to do |format|
      if @cliant.save
        format.html { redirect_to @cliant, notice: 'Cliant was successfully created.' }
        format.json { render :show, status: :created, location: @cliant }
      else
        format.html { render :new }
        format.json { render json: @cliant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cliants/1
  # PATCH/PUT /cliants/1.json
  def update
    respond_to do |format|
      if @cliant.update(cliant_params)
        format.html { redirect_to @cliant, notice: 'Cliant was successfully updated.' }
        format.json { render :show, status: :ok, location: @cliant }
      else
        format.html { render :edit }
        format.json { render json: @cliant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cliants/1
  # DELETE /cliants/1.json
  def destroy
    @cliant.destroy
    respond_to do |format|
      format.html { redirect_to cliants_url, notice: 'Cliant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cliant
      @cliant = Cliant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cliant_params
      params.require(:cliant).permit(:title, :area, :name, :email, :smallnumber, :concept)
    end
end
