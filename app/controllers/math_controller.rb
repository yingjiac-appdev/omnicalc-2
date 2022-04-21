class MathController < ApplicationController
  def add_form
    render({:template=> "math_templates/add_form.html.erb"})
  end

  def subtract_form
    render({:template=> "math_templates/subtract_form.html.erb"})
  end

  def multiply_form
    render({:template=> "math_templates/multiply_form.html.erb"})
  end

  def divide_form
    render({:template=> "math_templates/divide_form.html.erb"})
  end

  def addition
    @first = params.fetch("first_num").to_f
    @second = params.fetch("second_num").to_f
    @results = @first+@second

    render({:template=> "math_templates/add_results.html.erb"})
  end

  def subtraction
    @first = params.fetch("first_num").to_f
    @second = params.fetch("second_num").to_f
    @results = (@first-@second).abs

    render({:template=> "math_templates/subtract_results.html.erb"})
  end

  def multiple
    @first = params.fetch("first_num").to_f
    @second = params.fetch("second_num").to_f
    @results = @first*@second

    render({:template=> "math_templates/multiply_results.html.erb"})
  end

  def division
    @first = params.fetch("first_num").to_f
    @second = params.fetch("second_num").to_f
    @results = @first/@second

    render({:template=> "math_templates/divide_results.html.erb"})
  end


  #def
    #apiruls should be a string as inputs
  

end