class AdresserController < ApplicationController
  def index
  end
  
  
  def query
    q = params[:query]
    
    # "lyongade 19, 2300"
    
    vej,postnr = q.split(',')
    vejnavn, husnr = vej.split(' ')
    
    parameters = {}
    if(vejnavn)
      parameters[:vejnavn] = vejnavn
    end
    if(husnr)
      parameters[:husnr] = husnr
    end
    if(postnr)
      parameters[:postnr] = postnr
    end
    
    adresses = Adresse.find(:all,:params => parameters)
    
    
    
    
    render :partial => "adresse", :collection  => adresses
  end

end
