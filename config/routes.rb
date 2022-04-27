Rails.application.routes.draw do
## math  
  get('/add', { :controller => "math", :action => "add_form"})
  get('/subtract', { :controller => "math", :action => "subtract_form"})
  get('/multiply', { :controller => "math", :action => "multiply_form"})
  get('/divide', { :controller => "math", :action => "divide_form"})
  get('/wizard_add', { :controller => "math", :action => "addition"})
  get('/wizard_subtract', { :controller => "math", :action => "subtraction"})
  get('/wizard_multiply', { :controller => "math", :action => "multiple"})
  get('/wizard_divide', { :controller => "math", :action => "division"})
## street-coordinate-weather
  get('street_to_coords/new', { :controller => "map", :action =>"street_form"})
  get('coords_to_weather/new', { :controller => "map", :action =>"coordinate_form"})
  get('street_to_weather/new', { :controller => "map", :action =>"weather_form"})
  get('/street_to_coords/results', { :controller => "map", :action =>"street_to_coor_results"})
  get('/coords_to_weather/results', { :controller => "map", :action =>"coords_to_weather_results"})
  get('/street_to_weather/results', { :controller => "map", :action =>"street_to_weather_results"})
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
