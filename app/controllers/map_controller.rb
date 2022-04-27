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
    url = "https://maps.googleapis.com/maps/api/geocode/json?address=#{params.fetch("user_street_address")}&key="+ ENV.fetch("GMAPS_KEY")
    @user_add = params.fetch("user_street_address")
    raw_data = open(url).read
    parsed_data = JSON.parse(raw_data) 
    loc = parsed_data.fetch("results")[0].fetch("geometry").fetch("location")
    @lat = loc.fetch("lat")
    @lng = loc.fetch("lng")
    render({:template=> "map_templates/street_to_coor_results.html.erb"})
  
  end

  def coords_to_weather_results
    url = "https://api.darksky.net/forecast/"+ ENV.fetch("DARK_SKY_KEY")+"/#{params.fetch("user_latitude")},#{params.fetch("user_longitude")}"
    @user_lat = params.fetch("user_latitude")
    @user_lng = params.fetch("user_longitude")
    raw_data = open(url).read
    parsed_data = JSON.parse(raw_data) 
    @curr_tem = parsed_data.fetch("currently").fetch("temperature").round(2)
    @curr_sum = parsed_data.fetch("currently").fetch("summary")
    @next60min = parsed_data.fetch("minutely").fetch("summary")
    @nexthours = parsed_data.fetch("hourly").fetch("summary")
    @nextdays = parsed_data.fetch("daily").fetch("summary")
    render({:template=> "map_templates/coords_to_weather_results.html.erb"})
  end

  def street_to_weather_results
    url_map = "https://maps.googleapis.com/maps/api/geocode/json?address=#{params.fetch("user_street_address")}&key="+ ENV.fetch("GMAPS_KEY")
    @user_add = params.fetch("user_street_address")
    raw_data_map = open(url_map).read
    parsed_data_map = JSON.parse(raw_data_map) 
    loc = parsed_data_map.fetch("results")[0].fetch("geometry").fetch("location")
    lat = loc.fetch("lat")
    lng = loc.fetch("lng")

    url_wea = "https://api.darksky.net/forecast/"+ ENV.fetch("DARK_SKY_KEY")+"/#{lat},#{lng}"
    raw_data_wea = open(url_wea).read
    parsed_data_wea = JSON.parse(raw_data_wea) 
    @curr_tem = parsed_data_wea.fetch("currently").fetch("temperature").round(2)
    @curr_sum = parsed_data_wea.fetch("currently").fetch("summary")
    @next60min = parsed_data_wea.fetch("minutely").fetch("summary")
    @nexthours = parsed_data_wea.fetch("hourly").fetch("summary")
    @nextdays = parsed_data_wea.fetch("daily").fetch("summary")
    render({:template=> "map_templates/street_to_weather_results.html.erb"})
  end

end