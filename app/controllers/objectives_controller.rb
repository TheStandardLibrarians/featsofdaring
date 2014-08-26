class ObjectivesController < ApplicationController
  include ApplicationHelper
  before_action :commands
  def show
    @objective = Objective.find(params[:adventure_id], params[:id])
    @adventure = Adventure.find(params[:adventure_id])
  end
  def update
    render plain: evaluate(params[:ripl_input])
  end
end
