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
    render :reciept
  end

  def new

    @handle
    @domain_name = params[:search]
    @domain_name.to_s.gsub('.com','').gsub('.ph','').gsub('.org','')

    @registrant = Registrant.new
    

    # if params[:domain_name]
    #   domain     = params[:domain_name]
    #   response   = @client.check EPP::Domain::Check.new(domain)
    #   @check     = EPP::Domain::CheckResponse.new response
    # end

  end

  def edit

  end

  def create

    @domain = params[:registrant][:domain]
    @span = params[:registrant][:span]
    # @registrant = Registrant.new(registrant_params)
    redirect_to :controller => 'registrants', :action => 'index', :domain => @domain

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

  # def registrant_params
  #   params.require(:registrant).permit(:int_name,:int_org,:int_addr,:int_addr_st,:int_addr_cty,:int_addr_sp,:int_addr_pc,:int_addr_cc,
  #                                      :lcl_name,:lcl_org,:lcl_addr,:lcl_addr_st,:lcl_addr_cty,:lcl_addr_sp,:lcl_addr_pc,:lcl_addr_cc,
  #                                      :voice,:fax,:email,:auth_info_password)
  # end
  

end
