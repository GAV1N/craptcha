class Response < ActiveRecord::Base     
  before_create :generate_pin
  
  private  
  
  def generate_pin
    alphanumerics = [('0'..'9'),('A'..'Z')].map {|range| range.to_a}.flatten
    self[:pin] = (0..5).map {alphanumerics[Kernel.rand(alphanumerics.size)] }.join
  end
end
