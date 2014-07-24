class WebtestController < ApplicationController
  def index
    Ripl::Shell.include Ripl::RedError
    render text: Ripl.shell.eval_input("RUBY_VERSION")
  end
  module Ripl
    module RedError
      def format_error(error)
        "\e[31m#{super}\e[m"
      end
    end
  end
end
