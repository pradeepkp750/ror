class PradeepsController < ApplicationController
  before_action :set_pradeep, only: [:show, :edit, :update, :destroy]

  # GET /pradeeps
  # GET /pradeeps.json
  def index
    @pradeeps = Pradeep.all
  end

  # GET /pradeeps/1
  # GET /pradeeps/1.json
  def show
  end

  # GET /pradeeps/new
  def new
    @pradeep = Pradeep.new
  end

  # GET /pradeeps/1/edit
  def edit
  end

  # POST /pradeeps
  # POST /pradeeps.json
  def create
    @pradeep = Pradeep.new(pradeep_params)

    respond_to do |format|
      if @pradeep.save
        format.html { redirect_to @pradeep, notice: 'Pradeep was successfully created.' }
        format.json { render :show, status: :created, location: @pradeep }
      else
        format.html { render :new }
        format.json { render json: @pradeep.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pradeeps/1
  # PATCH/PUT /pradeeps/1.json
  def update
    respond_to do |format|
      if @pradeep.update(pradeep_params)
        format.html { redirect_to @pradeep, notice: 'Pradeep was successfully updated.' }
        format.json { render :show, status: :ok, location: @pradeep }
      else
        format.html { render :edit }
        format.json { render json: @pradeep.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pradeeps/1
  # DELETE /pradeeps/1.json
  def destroy
    @pradeep.destroy
    respond_to do |format|
      format.html { redirect_to pradeeps_url, notice: 'Pradeep was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pradeep
      @pradeep = Pradeep.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pradeep_params
      params.require(:pradeep).permit(:name, :email)
    end
end
