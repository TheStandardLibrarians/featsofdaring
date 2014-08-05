module ApplicationHelper
  def evaluate(params)
    ::Ripl.shell.eval_input(params) 
  end
 private

 def commands
    if params[:ripl_input] == "meow"
      params[:id] = params[:id].to_i + 1
      redirect_to action:  'show', adventure_id: params[:adventure_id], id: params[:id]
    end
  end
end
