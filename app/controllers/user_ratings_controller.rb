class UserRatingsController < ApplicationController
  before_action :set_user_rating, only: [:show, :edit, :update, :destroy]

  # GET /user_ratings
  # GET /user_ratings.json
  def index
    @user_ratings = UserRating.all
  end

  # GET /user_ratings/1
  # GET /user_ratings/1.json
  def show
  end

  # GET /user_ratings/new
  def new
    @user_rating = UserRating.new
  end

  # GET /user_ratings/1/edit
  def edit
  end

  # POST /user_ratings
  # POST /user_ratings.json
  def create
    @user_rating = UserRating.new(user_rating_params)

    respond_to do |format|
      if @user_rating.save
        format.html { redirect_to @user_rating, notice: 'User rating was successfully created.' }
        format.json { render action: 'show', status: :created, location: @user_rating }
      else
        format.html { render action: 'new' }
        format.json { render json: @user_rating.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_ratings/1
  # PATCH/PUT /user_ratings/1.json
  def update
    respond_to do |format|
      if @user_rating.update(user_rating_params)
        format.html { redirect_to @user_rating, notice: 'User rating was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user_rating.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_ratings/1
  # DELETE /user_ratings/1.json
  def destroy
    @user_rating.destroy
    respond_to do |format|
      format.html { redirect_to user_ratings_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_rating
      @user_rating = UserRating.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_rating_params
      params.require(:user_rating).permit(:user_id, :rateable_id, :rateable_type, :rating_id)
    end
end
