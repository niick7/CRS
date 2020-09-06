class Admin::RentersController < Admin::BaseController
  before_action :set_renter, only: [:edit, :update, :destroy]

  # GET /renters
  # GET /renters.json
  def index
    @renters = Renter.all.order('id desc')
  end

  # GET /renters/new
  def new
    @renter = Renter.new
  end

  # GET /renters/1/edit
  def edit
    redirect_to admin_renters_path, danger: 'Cannot edit renter admin' and return if @renter.admin?
  end

  # POST /renters
  # POST /renters.json
  def create
    @renter = Renter.new(renter_params)

    if @renter.save
      redirect_to admin_renters_path, success: 'Renter was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /renters/1
  # PATCH/PUT /renters/1.json
  def update
    if @renter.update(renter_params)
      redirect_to admin_renters_path, success: 'Renter was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /renters/1
  # DELETE /renters/1.json
  def destroy
    @renter.destroy

    redirect_to admin_renters_path, success: 'Renter was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_renter
      @renter = Renter.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def renter_params
      params.require(:renter).permit(:email, :password, :firstName, :lastName, :phoneNumber)
    end
end
