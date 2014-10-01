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
  gem.name = "rails_angular_seo"
  gem.homepage = "http://github.com/arunn/rails_angular_seo"
  gem.license = "MIT"
  gem.summary = %Q{ rails_angular_seo allows you to make your single-page apps (Backbone, Angular, etc) built on Rails SEO-friendly. }
  gem.description = %Q{ rails_angular_seo allows you to make your single-page apps (Backbone, Angular, etc) built on Rails SEO-friendly. It works by injecting a small rack middleware that will render pages as plain html, when the requester is one of the most common crawlers/bots out there (Google, Yahoo Baidu and Bing }
  gem.email = "arunkumar@chronus.com"
  gem.authors = ["herval", "arunn"]
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new

require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

task :default => :spec


require 'rdoc/task'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "rails_angular_seo #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
