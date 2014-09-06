class AdventuresController < ApplicationController
  include ApplicationHelper
  def show
    @adventure = Adventure.find(params[:id])
  end
  def update
    render plain: evaluate(params[:ripl_input])
  end

end
