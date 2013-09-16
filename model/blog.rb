require 'active_record'
#this is a comment---2nd time
class Blog < ActiveRecord::Base
    has_many :posts
    belongs_to :users    
end
