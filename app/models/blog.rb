class Blog < ActiveRecord::Base
  belongs_to :User
  
  validates :title, :body, presence:true
  validates :user, presence:true
end
