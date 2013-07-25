require 'rubygems'
require 'active_record'
require 'mysql'

ActiveRecord::Base.logger = Logger.new(STDOUT)
 
ActiveRecord::Base.establish_connection(
    :adapter => "mysql",
    :host => "localhost",
    :username => "root",
    :password => "sql",
    :database => "blog_try")
 
class Blog < ActiveRecord::Base
    has_many :posts, :foreign_key => :blog_id
    belongs_to :users
end

class Post < ActiveRecord::Base
  belongs_to :blogs
  belongs_to :users
end

class User < ActiveRecord::Base
   has_many  :posts, :foreign_key => :user_id
   has_many :blogs, :foreign_key => :user_id
  
end

puts "The Total number of blogs is "+ Blog.count.to_s
