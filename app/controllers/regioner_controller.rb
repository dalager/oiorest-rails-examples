class RegionerController < ApplicationController

  def index
    @regioner = Region.find(:all)
  end

  def new
  end

  def vis
    if(params[:id])
      @region = Region.find(params[:id])
      @kommuner = @region.kommuner
    end
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
