class IndicatorValuesController < ApplicationController
  before_action :set_indicator_value, only: [:show, :edit, :update, :destroy]

  # GET /indicator_values
  # GET /indicator_values.json
  def index
    @indicator_values = IndicatorValue.all
  end

  # GET /indicator_values/1
  # GET /indicator_values/1.json
  def show
  end

  # GET /indicator_values/new
  def new
    @indicator_value = IndicatorValue.new
  end

  # GET /indicator_values/1/edit
  def edit
  end

  # POST /indicator_values
  # POST /indicator_values.json
  def create
    @indicator_value = IndicatorValue.new(indicator_value_params)

    respond_to do |format|
      if @indicator_value.save
        format.html { redirect_to @indicator_value, notice: 'Indicator value was successfully created.' }
        format.json { render action: 'show', status: :created, location: @indicator_value }
      else
        format.html { render action: 'new' }
        format.json { render json: @indicator_value.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /indicator_values/1
  # PATCH/PUT /indicator_values/1.json
  def update
    respond_to do |format|
      if @indicator_value.update(indicator_value_params)
        format.html { redirect_to @indicator_value, notice: 'Indicator value was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @indicator_value.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /indicator_values/1
  # DELETE /indicator_values/1.json
  def destroy
    @indicator_value.destroy
    respond_to do |format|
      format.html { redirect_to indicator_values_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_indicator_value
      @indicator_value = IndicatorValue.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def indicator_value_params
      params.require(:indicator_value).permit(:indicator_id, :value_id)
    end
end
