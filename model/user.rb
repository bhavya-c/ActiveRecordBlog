require 'active_record'
#comment in user.rb
class User < ActiveRecord::Base
   has_many  :posts
   has_many :blogs
  
end
