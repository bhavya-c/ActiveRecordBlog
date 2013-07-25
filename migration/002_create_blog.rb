require "rubygems"
require "active_record"
require 'mysql'
 
 class CreateBlog <
    ActiveRecord::Migration
    def self.up
    	create_table :blogs do |t|
    	t.string :title
    	t.string :content
    	t.timestamps
        t.string :user_id
	end	  
    end
    
    def self.down
    	drop_table :blogs
    end
end

class CreatePost <
    ActiveRecord::Migration
    def self.up
    	create_table :posts do |t|
	t.string :comment
	t.timestamps
	end
    end
    
    def self.down
    	drop_table :posts
    end
end

class CreateUser <
    ActiveRecord::Migration
    def self.up
    	create_table :users do |t|
	t.string :username
	t.string :place
	end
    end
    
    def self.down
    	drop_table :users
    end
end