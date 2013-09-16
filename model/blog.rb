require 'active_record'
#4th time
#this is a comment---4th time
class Blog < ActiveRecord::Base
    has_many :posts
    belongs_to :users    
end
