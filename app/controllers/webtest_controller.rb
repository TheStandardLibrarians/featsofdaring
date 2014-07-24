class WebtestController < ApplicationController

  def index
    if params[:user_input] == "meow"
       redirect_to "http://www.pinterest.com" 
    else
      render text: ::Ripl.shell.eval_input(params[:user_input])
    end
  end
end
