class Admin::CarsController < Admin::BaseController
  before_action :set_car, only: [:edit, :update, :destroy]

  # GET /cars
  # GET /cars.json
  def index
    @cars = Car.all.order('id desc')
  end

  # GET /cars/new
  def new
    @car = Car.new
  end

  # GET /cars/1/edit
  def edit
  end

  # POST /cars
  # POST /cars.json
  def create
    @car = Car.new(car_params)

    if @car.save
      redirect_to admin_cars_path, success: 'Car was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /cars/1
  # PATCH/PUT /cars/1.json
  def update
    if @car.update(car_params)
      redirect_to admin_cars_path, success: 'Car was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /cars/1
  # DELETE /cars/1.json
  def destroy
    @car.destroy

    redirect_to admin_cars_path, success: 'Car was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_car
      @car = Car.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def car_params
      params.require(:car).permit(:make, :model, :year, :color, :numOfSeats, :licensePlate, :rentPrice)
    end
end
