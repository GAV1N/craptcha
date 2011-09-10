class Posting < ActiveRecord::Base
  belongs_to :user

  has_many :responses
  has_many :callers, :through => :responses
  
  validates_presence_of :user_id, :title, :craigslist_url
  
  scope :recent, lambda { |num|
   limit(num ||5).order("created_at desc")
  }                               
  
  default_scope lambda {
    User.current_user ? where("postings.user_id = #{User.current_user.id}") : nil
  }
  
end
