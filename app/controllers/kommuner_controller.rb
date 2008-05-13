class KommunerController < ApplicationController

  def index
    @kommuner = Kommune.find(:all).sort_by{|x| x.navn}
  end

  def vis
    
  end
  
  
  def filtering_search
    @kommuner = Kommune.find_by_name(params[:query])
    @query = params[:query]
    render :partial => "kommuner/kommune.html.erb", :collection  => @kommuner
  end
  
end
