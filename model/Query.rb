require 'rubygems'
require 'active_record'
require 'mysql'
#comment in query.rb--2nd time
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

print "Username of post 1 is: "
User.joins(:posts).where("posts.id = '4'").each do |p|
 puts p.username
end

print "User who commented 'Awwesome US pics' is: "
User.joins(:posts).where("posts.comment = 'Awesome US pics'").each do |p|
 puts p.username
end

print "Number of comments on blog 2 is: "
comm=Post.where(blog_id: '2').count
puts comm


print "Last 2 comments on blog 2 are: "
Post.where(blog_id: '2').last(2).each do |m|
  puts m.comment
end

print "First 2 comments on blog 2 are: "
Post.where(blog_id: '2').first(2).each do |m|
  puts m.comment
end


