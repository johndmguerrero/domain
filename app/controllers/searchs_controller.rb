class SearchsController < ApplicationController

  before_action :set_domain

  def index
    puts @domain
  end

  private

  def set_domain
    @domain = Domain.find(params[:name])
  end

  def set_params
    params.require(:domain).permit(:name)
  end

end
