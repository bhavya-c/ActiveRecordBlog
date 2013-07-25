require 'active_record'

class Post < ActiveRecord::Base
  belongs_to :blogs
  belongs_to :users
end