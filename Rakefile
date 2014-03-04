require_relative 'lib/raker'

task :default => [:testlib]

task :testlib do
  system 'ruby test/raker_test.rb'
end

task :make, :path do |t, args|
  puts "make ..."
  Raker.new(args[:path]).compile  
end

task :clear, :path do |t, args|
  puts "clear ..."
  Raker.new(args[:path]).clear
end

task :cm, [:path] => [ :clear, :make ] do |t, args|
end

task :test, [:path] => [ :cm ] do |t, args|
  puts "running tests ..."
  Raker.new(args[:path]).test
end