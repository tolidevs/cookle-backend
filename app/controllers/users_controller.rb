class UsersController < ApplicationController
  # before_action :set_user, only: [:show, :update, :destroy]

  # GET /users
  def index
    @users = User.all

    render json: @users
  end

  def login
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      render json: { id: user.id, email: user.email }
    else
      render json: { message: "Invalid username & password"}
    end
  end

  # GET /users/1
  def show
    render json: @user
  end

  # POST /users
  def create
    @user = User.new(email: params[:email], password: params[:password])
    
    if @user.save
      render json: @user, status: :created, location: @user
    else
      puts "failed"
      render json: { message: @user.errors.full_messages } 
    end
  end

  #Get /users/1/saved_recipes
  def saved_recipes
    @saved_recipes = SavedRecipe.all.where(user_id: params[:id])

    render json: @saved_recipes
  end

  #Get /users/1/preferences
  def preferences
    @preferences = UserPreference.all.where(user_id: params[:id])

    render json: @preferences
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end


  # DELETE /users/1
  def destroy
    @user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    # def set_user
    #   @user = User.find(params[:id])
    # end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:user).permit(:id, :password, :email)
    end
end
