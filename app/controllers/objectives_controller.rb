class ObjectivesController < ApplicationController
  include ApplicationHelper
  before_action :commands, only: [:update]

   def learn
     @objective = Objective.find(params[:adventure_id], params[:id])
     @adventure = Adventure.find(params[:adventure_id])
   end
=begin
   def submit
     if correct
       redirect_to :review render plain: evaluate(params[:ripl_input])
     else
       render :try_again 
   end
=end
   def review
     @adventure = Adventure.find(params[:adventure_id]) 
   end
   def repl
     if meow? 
       redirect_to learn_adventure_objective_path(1,2)
     else 
       redirect_to review_adventure_objective_path(1, 1)
     end
   end
private
  def meow?
    params[:ripl_input].downcase.include? "meow"
  end
end

