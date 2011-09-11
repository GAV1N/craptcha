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
      @response.save
      render "capture_pin.xml"
    else
      render "invalid_pin.xml"
    end
  end            
  
  def capture_recording_sid      
    twilio_sid    = params["CallSid"]
    recording_url = params["RecordingUrl"]
    
    @response = Response.find_by_twilio_sid(twilio_sid)
    
    if @response      
      @response.recording_url = recording_url
      @response.save
    end                                      
    
    render "capture_recording_sid.xml"
  end            
  
  def capture_transcription       
    twilio_sid    = params["CallSid"]
    transcription = params["TranscriptionText"]     
    
    @response = Response.find_by_twilio_sid(twilio_sid)
    
    if @response      
      @response.transcription = transcription
      @response.save
    end                                      
  end            
  
end
