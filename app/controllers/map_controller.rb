class MapController < ApplicationController
  #def
    #apiruls should be a string as inputs
  def street_form
    render({:template=> "map_templates/street_form.html.erb"})
  end

  def coordinate_form
    render({:template=> "map_templates/coordinate_form.html.erb"})
  end

  def weather_form
    render({:template=> "map_templates/weather_form.html.erb"})
  end

  def street_to_coor_results
    url = "https://maps.googleapis.com/maps/api/geocode/json?address=#{params.fetch("user_street_address")}&key=AIzaSyD8RrOFB0dPsF-leqeFJdmX3yOvcQbfNyY"
    thing = open.url
    
    render({:template=> "map_templates/weather_form.html.erb"})
  end

  


end