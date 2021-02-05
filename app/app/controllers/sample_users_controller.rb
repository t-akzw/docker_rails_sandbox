class SampleUsersController < ApplicationController
  before_action :set_sample_user, only: [:show, :edit, :update, :destroy]

  # GET /sample_users
  # GET /sample_users.json
  def index
    @sample_users = SampleUser.all
  end

  # GET /sample_users/1
  # GET /sample_users/1.json
  def show
  end

  # GET /sample_users/new
  def new
    @sample_user = SampleUser.new
  end

  # GET /sample_users/1/edit
  def edit
  end

  # POST /sample_users
  # POST /sample_users.json
  def create
    @sample_user = SampleUser.new(sample_user_params)

    respond_to do |format|
      if @sample_user.save
        format.html { redirect_to @sample_user, notice: 'Sample user was successfully created.' }
        format.json { render :show, status: :created, location: @sample_user }
      else
        format.html { render :new }
        format.json { render json: @sample_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sample_users/1
  # PATCH/PUT /sample_users/1.json
  def update
    respond_to do |format|
      if @sample_user.update(sample_user_params)
        format.html { redirect_to @sample_user, notice: 'Sample user was successfully updated.' }
        format.json { render :show, status: :ok, location: @sample_user }
      else
        format.html { render :edit }
        format.json { render json: @sample_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sample_users/1
  # DELETE /sample_users/1.json
  def destroy
    @sample_user.destroy
    respond_to do |format|
      format.html { redirect_to sample_users_url, notice: 'Sample user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sample_user
      @sample_user = SampleUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sample_user_params
      params.require(:sample_user).permit(:name, :age)
    end
end
