require "rubygems"
require "active_record"
require "yaml"
require 'rake'


task :environment do
ActiveRecord::Base.establish_connection(:adapter => "mysql",
    :host => "localhost",
    :username => "root",
    :password => "sql",
    :database => "blog_second")
    ActiveRecord::Base.logger =Logger.new(STDOUT)
end


task :default => :migrate
desc "Migrate the database through
scripts in db/migrate. Target specific
version with VERSION=x"
task :migrate => :environment do
    ActiveRecord::Migrator.migrate('migration/', nil )
end
