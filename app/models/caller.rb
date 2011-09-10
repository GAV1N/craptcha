class Caller < ActiveRecord::Base
  has_many :responses
  has_many :postings, :through => :responses
end
