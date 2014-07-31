class ObjectivesController < ApplicationController
  include ApplicationHelper
 
  def show
  end

  def update
    render plain: evaluate(params[:ripl_input])
  end
end
