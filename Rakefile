require "bundler/gem_tasks"
require "bundler/setup"
require "rake/testtask"

Rake::TestTask.new(:test) do |t|
  t.libs << "test"
  t.libs << "lib"
  t.test_files = FileList["test/**/test_*.rb"]
end

require "rake/extensiontask"

task :build => :compile

Rake::ExtensionTask.new("winevt") do |ext|
  ext.lib_dir = "lib/winevt"
end

task :default => [:clobber, :compile, :test]
