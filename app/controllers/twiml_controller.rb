class TwimlController < ApplicationController
  
  def primary_listener; end
  
  def capture_pin  
    phone       = params["From"]
    twilio_sid  = params["CallSid"]
    pin         = params["Digits"]
    @response = Response.find_by_pin(pin)      
    if @response
      @caller   = Caller.find_or_create_by_phone(phone)
      @response.caller      = @caller
      @response.twilio_sid  = twilio_sid
      render "capture_pin.xml"
    else
      render "invalid_pin.xml"
    end
  end            
  
  def capture_recording_sid
    
    render "capture_recording.xml"
  end            
  
  def capture_transcription
    
  end            
  
end
