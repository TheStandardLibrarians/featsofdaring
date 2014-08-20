class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def find_adventure_and_objective
    @adventure = Adventure.find(params[:adventure_id])
    @objective = Objective.find(params[:adventure_id], params[:id])
  end
end
