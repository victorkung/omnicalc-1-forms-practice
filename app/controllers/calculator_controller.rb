class CalculatorController < ApplicationController
  
  # Homepage
  def render_homepage
    render({ :template => "calculator_templates/square_new" })
  end

  # Square Calculator
  def square_new
    render({ :template => "calculator_templates/square_new" })
  end

  def square_results
    @number = params.fetch("number").to_f
    @number_squared = @number * @number

    render({ :template => "calculator_templates/square_results" })
  end


  # Square Root Calculator
  def square_root_new
    render({ :template => "calculator_templates/square_root_new" })
  end

  def square_root_results
    @user_number = params.fetch("user_number").to_f
    @sqrt_number = Math.sqrt(@user_number)

    render({ :template => "calculator_templates/square_root_results" })
  end


  # Payments Calculator
  def payment_new
    render({ :template => "calculator_templates/payment_new" })
  end

  def payment_results
    # Monthly APR Calculation
    @user_apr = params.fetch("user_apr").to_f
    @monthly_apr = @user_apr / 100 / 12

    # Monthly Periods
    @user_years = params.fetch("user_years").to_f
    @total_months = @user_years * 12

    # Principal
    @user_pv = params.fetch("user_pv").to_f

    @interest_payment = (
      (@monthly_apr * @user_pv) / 
      (1 - (1 + @monthly_apr)**(-@total_months))
      )

    render({ :template => "calculator_templates/payment_results" })
  end


  # Random Number Generator
  def random_new
    render({ :template => "calculator_templates/random_new" })
  end

  def random_results
    @user_min = params.fetch("user_min").to_f
    @user_max = params.fetch("user_max").to_f
    @random_num = rand(@user_min..@user_max)

    render({ :template => "calculator_templates/random_results" })
  end
end
