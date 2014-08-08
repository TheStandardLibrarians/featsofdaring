module ApplicationHelper
  def evaluate(params)
    ::Ripl.shell.eval_input(params) 
  end
 private

  def commands
    meow_command
    back_command
  end

  def meow_command
    if params[:ripl_input] =~ /[mM][eE][oO][wW]+/
      params[:id] = params[:id].to_i + 1
      redirect_to_objective
    end
  end
 
  def back_command
    if params[:ripl_input] =~ /[bB][aA][cC][kK]+/ && params[:id] != 1
      params[:id] = params[:id].to_i - 1
      redirect_to_objective
    end
  end

  def redirect_to_objective
   redirect_to action: 'show', adventure_id: params[:adventure_id], id: params[:id]
  end
end
