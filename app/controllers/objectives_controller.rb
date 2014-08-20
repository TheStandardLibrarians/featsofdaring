class ObjectivesController < ApplicationController
  include ApplicationHelper
  before_action :commands
  def show
    #find_adventure_and_objective  
    puts "@objective1 works" 
    puts @objective = Objective.find(params[:adventure_id], params[:id])
    #@adventure = Adventure.find(params[:adventure_id])
  end
  def update
    render plain: evaluate(params[:ripl_input])
  end
end
