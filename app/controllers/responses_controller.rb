class ResponsesController < ApplicationController

  def new                                        
    # ip = request.ip             
    dummy_ips = [
      "192.131.1.26", # Fort Collins, CO	
      "173.204.115.234", # San Francisco, CA
      "66.31.248.0", # Burlington, VT
      "24.21.162.22", # Portland, OR
      "12.17.135.111", # Seattle, WA
      "209.198.148.0", # Austin, TX
      "64.90.182.55", # New York, NY
      "141.164.32.52", # New Orleans, LA
      "165.110.230.011" # Washington, DC
    ]
       
    ip = dummy_ips.sample 
    
    @posting = Posting.find(params[:posting_id])
    @response = @posting.responses.create(:ip => ip)

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @response }
    end
  end

end
