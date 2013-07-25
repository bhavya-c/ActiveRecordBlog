require "rubygems"
require "active_record"
require 'mysql'
 
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