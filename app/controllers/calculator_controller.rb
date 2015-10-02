class CalculatorController < ApplicationController
  before_action :check_request

  layout false

  def sum
    sum = params[:first_value].to_f + params[:second_value].to_f
    render :text => sum
  end

  def subtraction
    subtraction = params[:first_value].to_f - params[:second_value].to_f
    render :text => subtraction
  end

  def division
    if  params[:second_value].to_f == 0
      render :text => 'division by zero', status: :bad_request
    else
      render :text => params[:first_value].to_f / params[:second_value].to_f
    end
  end

  def square_root
    if params[:first_value].to_f < 0
      render :text => 'less then 0', status: :bad_request
    else
      render :text => Math.sqrt(params[:first_value].to_f)
    end
  end

  def cube_root
    cube_root = cube_root_function(params[:first_value].to_f)
    render :text => cube_root
  end

  def sinus
    sinus = Math.sin(params[:first_value].to_f)
    render :text => sinus
  end

  def cosinus
    cosinus = Math.cos(params[:first_value].to_f)
    render :text => cosinus
  end

  private
  def check_request
    unless request.xhr?
      head :bad_request
      return
    end
  end

  def cube_root_function(x)
    x**(1/3.0)
  end
end