require "rubygems"
require "active_record"
require 'mysql'
 
 class CreatePost <
    ActiveRecord::Migration
    def self.up
    	create_table :posts do |t|
	t.string :comment
	t.timestamps
    t.string :user_id
    t.string :blog_id
	end
    end
    
    def self.down
    	drop_table :posts
    end
end