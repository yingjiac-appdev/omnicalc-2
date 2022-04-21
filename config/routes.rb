Rails.application.routes.draw do
  get('/add', { :controller => "math", :action => "add_form"})
  get('/subtract', { :controller => "math", :action => "subtract_form"})
  get('/multiply', { :controller => "math", :action => "multiply_form"})
  get('/divide', { :controller => "math", :action => "divide_form"})
  get('/wizard_add', { :controller => "math", :action => "addition"})
  get('/wizard_subtract', { :controller => "math", :action => "subtraction"})
  get('/wizard_multiply', { :controller => "math", :action => "multiple"})
  get('/wizard_divide', { :controller => "math", :action => "division"})
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
