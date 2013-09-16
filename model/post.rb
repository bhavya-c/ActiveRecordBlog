require 'active_record'
#comment in post.rb---3rd time
class Post < ActiveRecord::Base
  belongs_to :blogs
  belongs_to :users
end
