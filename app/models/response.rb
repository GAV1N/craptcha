class Response < ActiveRecord::Base     
  before_create :generate_pin, :get_city     
  belongs_to :caller
  
  INFOCHIMPS_API_KEY = "avalanche-31LNoegpa7mQNQgGbJcclrEpd69"
  def get_city    
    url = "http://api.infochimps.com/web/an/de/geo.json?" + 
      "ip=#{self.ip}" + 
      "&_apikey=#{INFOCHIMPS_API_KEY}"
                                 
    buffer = Faraday.new(url).get
    result = JSON.parse(buffer.body)   
    self[:city] = result["city"]
  end
  
  private  
  
  def generate_pin
    alphanumerics = [('0'..'9')].map {|range| range.to_a}.flatten
    self[:pin] = (0..5).map {alphanumerics[Kernel.rand(alphanumerics.size)] }.join
  end
end
