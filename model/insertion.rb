require 'rubygems'
require 'active_record'
require 'mysql'

ActiveRecord::Base.logger = Logger.new(STDOUT)
 ActiveRecord::Base.establish_connection(
    :adapter => "mysql",
    :host => "localhost",
    :username => "root",
    :password => "sql",
    :database => "blog_second")

class Blog < ActiveRecord::Base
    has_many :posts
    belongs_to :users
    
end

class Post < ActiveRecord::Base
  belongs_to :blogs
  belongs_to :users
end

class User < ActiveRecord::Base
   has_many  :posts
   has_many :blogs
  
end

@user1=User.create(:username => 'Bhavya', :place => 'Bangalore')
@user2=User.create(:username => 'Kanaga', :place => 'Chennai')
@user3=User.create(:username => 'Rashmi', :place => 'Haryana')
@user4=User.create(:username => 'Nikitha', :place => 'Kolkata')


@blog1=Blog.create(:title => 'First job', :content => 'Had an awesome time')
@blog2=Blog.create(:title => 'US trip', :content => 'Toured the whole of united states')
@blog3=Blog.create(:title => 'Festival', :content => 'Diwali is an important festival to Indians')

@post1=Post.create(:comment => 'A very good insight on your first job!!')
@post2=Post.create(:comment => 'Awesome US pics' )
@post3=Post.create(:comment => 'It was an awesome article!! Happy Diwali!!')
@post4=Post.create(:comment => 'But I stopped celebrating Diwali long back')
@post5=Post.create(:comment => 'I miss Diwali here ')


@user1.blogs.push(@blog1)
@user2.blogs.push(@blog2)
@user3.blogs.push(@blog3)


@blog1.posts.push(@post1)  #this post is posted on blog1
@blog2.posts.push(@post2)
@blog3.posts.push(@post3)
@blog1.posts.push(@post4)
@blog2.posts.push(@post5)

@user4.posts.push(@post1)#which user commmented on which post
@user3.posts.push(@post2)
@user2.posts.push(@post3)
@user1.posts.push(@post4)
@user4.posts.push(@post5)