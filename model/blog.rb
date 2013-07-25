require 'active_record'

class Blog < ActiveRecord::Base
    has_many :posts
    belongs_to :users    
end