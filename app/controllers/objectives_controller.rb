class ObjectivesController < ApplicationController
  include ApplicationHelper
  before_action :commands
  def show
  end

  def update
    render plain: evaluate(params[:ripl_input])
  end
end
