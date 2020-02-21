class DosesController < ApplicationController
  # def index
  #   @doses = Dose.all
  # end

  # def new
  #   # raise
  #   # @cocktail = Cocktail.find(params[:id])
  #   @dose = Dose.new()

  #   render "cocktails/show/#{params[:cocktail_id]}"
  # end

  def create
    @dose = Dose.new(dose_params)
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render "cocktails/show"
    end
  end

  # def edit
  #   @dose = Dose.find(params[:id])
  # end

  def update
    @dose = Dose.find(params[:id])
    @dose.update(dose_params)

    redirect_to cocktail_path(@dose.cocktail)
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to cocktail_path(@dose.cocktail)
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
