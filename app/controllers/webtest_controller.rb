class WebtestController < ApplicationController
  def index
    render text: Ripl.shell.eval_input("RUBY_VERSION")
  end
end
