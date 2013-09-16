require 'active_record'
#comment in post.rb
class Post < ActiveRecord::Base
  belongs_to :blogs
  belongs_to :users
end
