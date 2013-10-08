require 'active_record'
<<<<<<< HEAD
#5th time
#this is a comment---5th time
=======

>>>>>>> parent of 6041651... Trying with a comment in blog.rb
class Blog < ActiveRecord::Base
    has_many :posts
    belongs_to :users    
end
