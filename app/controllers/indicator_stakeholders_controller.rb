class IndicatorStakeholdersController < ApplicationController
  before_action :set_indicator_stakeholder, only: [:show, :edit, :update, :destroy]

  # GET /indicator_stakeholders
  # GET /indicator_stakeholders.json
  def index
    @indicator_stakeholders = IndicatorStakeholder.all
  end

  # GET /indicator_stakeholders/1
  # GET /indicator_stakeholders/1.json
  def show
  end

  # GET /indicator_stakeholders/new
  def new
    @indicator_stakeholder = IndicatorStakeholder.new
  end

  # GET /indicator_stakeholders/1/edit
  def edit
  end

  # POST /indicator_stakeholders
  # POST /indicator_stakeholders.json
  def create
    @indicator_stakeholder = IndicatorStakeholder.new(indicator_stakeholder_params)

    respond_to do |format|
      if @indicator_stakeholder.save
        format.html { redirect_to @indicator_stakeholder, notice: 'Indicator stakeholder was successfully created.' }
        format.json { render action: 'show', status: :created, location: @indicator_stakeholder }
      else
        format.html { render action: 'new' }
        format.json { render json: @indicator_stakeholder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /indicator_stakeholders/1
  # PATCH/PUT /indicator_stakeholders/1.json
  def update
    respond_to do |format|
      if @indicator_stakeholder.update(indicator_stakeholder_params)
        format.html { redirect_to @indicator_stakeholder, notice: 'Indicator stakeholder was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @indicator_stakeholder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /indicator_stakeholders/1
  # DELETE /indicator_stakeholders/1.json
  def destroy
    @indicator_stakeholder.destroy
    respond_to do |format|
      format.html { redirect_to indicator_stakeholders_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_indicator_stakeholder
      @indicator_stakeholder = IndicatorStakeholder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def indicator_stakeholder_params
      params.require(:indicator_stakeholder).permit(:indicator_id, :stakeholder_id)
    end
end
