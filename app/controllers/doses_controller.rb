class DosesController < ApplicationController

  def new
    @dose = DOSE.new
    @cocktail = Cocktail.find(:id)
    # correct cocktail
  end

  def create
    @dose = DOSE.new(dose_params)
    if @dose.save
      redirect_to cocktails_path(@cocktail)
    else
      render "new" # need to create the view!
    end
  end

  def destroy
    @dose.destroy
    redirect_to dose_path
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient)
  end
end

