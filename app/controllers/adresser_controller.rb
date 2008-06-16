class AdresserController < ApplicationController
  def index
  end
  
  
  def query
    q = params[:query]
    
    # expecting address in format "Lyongade 19, 2300" or less
    vej,postnr = q.split(',')
    vejnavn, husnr = vej.split(/(\d{1,4})/)
    
    parameters = {}
    if(vejnavn)
      parameters[:vejnavn] = vejnavn.strip
    end
    if(husnr)
      parameters[:husnr] = husnr.strip
    end
    if(postnr)
      parameters[:postnr] = postnr.strip
    end
    
    adresses = Adresse.find(:all,:params => parameters)
    
    render :partial => "adresser", :locals  => {:adresser  => adresses}
  end

end
