require 'active_record'
#5th time
#this is a comment---5th time
class Blog < ActiveRecord::Base
    has_many :posts
    belongs_to :users    
end
