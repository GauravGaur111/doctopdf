# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "doctopdf"
  gem.homepage = "http://github.com/gauravgaur111/doctopdf"
  gem.license = "MIT"
  gem.summary = %Q{Jruby gem to convert microsoft office documents to pdf using openoffice and jodconverter libraries}
  gem.description = %Q{Jruby gem to convert microsoft office documents to pdf. Useful to render office documents in browser in rails web app settings.}
  gem.email = "gauravgaur111@gmail.com"
  gem.authors = ["gauravgaur111"]
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end

#require 'simplecov/simplecovtask'
#Rcov::RcovTask.new do |test|
#  test.libs << 'test'
#  test.pattern = 'test/**/test_*.rb'
#  test.verbose = true
#  test.rcov_opts << '--exclude "gems/*"'
#end

task :default => :test

require 'rdoc/task'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "jrtika #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
