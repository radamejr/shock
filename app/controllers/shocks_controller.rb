class ShocksController < ApplicationController
  def index
    @shocks = Staticshock.all
    @shock = Staticshock.new
  end

  def new
    @shock = Staticshock.new
  end

  def create
    @shock = Staticshock.create(shock_params)

    if @shock.valid?
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end


  private

  def shock_params
    params.require(:staticshock).permit(:comment, :picture)
  end

end
