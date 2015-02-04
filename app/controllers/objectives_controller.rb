class ObjectivesController < ApplicationController

  def learn
    @objective = Objective.find(params[:adventure_id], params[:id])
    @adventure = Adventure.find(params[:adventure_id])
  end

  def review
    @ripl_output=evaluate('Net::HTTP.get_response(URI("http://prettyp.herokuapp.com"))')
    @adventure = Adventure.find(params[:adventure_id])
@objective = Objective.find(params[:adventure_id], params[:id])
  end

  def correct?
    @ripl_output.class.name.include? 'Net::HTTPMovedPermanently'
  end

  def repl
    @ripl_output=evaluate(params[:ripl_input])
    if meow?
      redirect_to learn_adventure_objective_path(1,2)
    elsif correct?
      redirect_to review_adventure_objective_path(1,1)
    else
      learn
      render :learn
    end
  end

  private

  def evaluate(params)
    ::Ripl.shell.eval_input(params)
  end

  def meow?
    params[:ripl_input].downcase.include? "meow"
  end
end
