class RegistrantsController < ApplicationController

  before_action :init_EPP_client, :init_contact

  def index

    domain     = params[:search]
    response   = @client.check EPP::Domain::Check.new(domain)
    @check     = EPP::Domain::CheckResponse.new response
    
    
    if domain

      if @check.available?
        render :new
      else
        redirect_to registrants_path , notice: 'Domain is already existed'
      end

    end


  end

  def show

  end

  def new

    @handle
    @domain_name = params[:search]

    @domain_name.to_s.gsub('.com','').gsub('.ph','').gsub('.org','')

    # if params[:domain_name]
    #   domain     = params[:domain_name]
    #   response   = @client.check EPP::Domain::Check.new(domain)
    #   @check     = EPP::Domain::CheckResponse.new response
    # end

  end

  def edit

  end

  def create

  end

  def update

  end

  def destroy

  end
  
  private

  def init_EPP_client
    host =    "172.16.46.55"
    user =    "testjdguererro"
    pass =    "Password123"

    @client = EPP::Client.new user, pass, host  
  end

  def init_contact
    timestamp = '%10.6f' % Time.now.to_f
    @handle = timestamp.sub('.', '')
  end
  

end
