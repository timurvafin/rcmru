require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "rcmru"
    gem.summary = %Q{Parse rcmru.ru info}
    gem.email = "timur.vafin@flatsoft.com"
    gem.homepage = "http://github.com/timurvafin/rcmru"
    gem.authors = ["Timur Vafin"]
    gem.add_dependency('httparty', '>= 0.6.1')

  end
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end

require 'cucumber/rake/task'
Cucumber::Rake::Task.new(:features)

task :features => :check_dependencies
task :default => :features