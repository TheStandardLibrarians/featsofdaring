module ApplicationHelper
  def evaluate(params)
    ::Ripl.shell.eval_input(params) 
  end
end
